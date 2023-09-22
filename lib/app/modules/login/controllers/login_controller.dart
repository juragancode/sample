import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_a_s_app_rekadigi/app/modules/register/controllers/register_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:permission_handler/permission_handler.dart';

import '../../../constant/url_GAS_v021.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/Dialog/Dialog_KesalahanServer.dart';
import '../../../widgets/Dialog/Dialog_Koneksi_Internet_Terganggu.dart';

final RegisterController emailC = Get.put(RegisterController());

class LoginController extends GetxController {
  // TextEditingController
  TextEditingController emailLoginC = TextEditingController();
  TextEditingController passLoginC = TextEditingController();

  // FocusNode
  FocusNode emailLoginFN = FocusNode();
  FocusNode passLoginFN = FocusNode();

  RxBool isLoading = false.obs;
  RxBool ingatSaya = false.obs;

  RxBool obscureTextDaftar = true.obs;

  // Pertama kali text diketuk
  RxBool isTextFieldTapped = false.obs;

  // validator email
  @override
  void onInit() {
    super.onInit();
    emailLoginC.addListener(() {
      checkEmailValidity();
    });
    passLoginC.addListener(() {
      PasswordTerisi();
    });
  }

  RxBool emailDaftar = true.obs;
  RxString email = ''.obs;
  bool get isValid {
    return RegExp(
            r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$')
        .hasMatch(email.value);
  }

  void checkEmailValidity() {
    email.value = emailLoginC.text;
    emailDaftar.value = isValid;
  }

  // format email
  RxString formattedEmail = ''.obs;
  void formatEmail() {
    if (email.isNotEmpty) {
      List<String> parts = email.value.split('@');
      if (parts.length == 2) {
        List<String> domainParts = parts[1].split('.');
        if (domainParts.isNotEmpty) {
          String firstPart = parts[0];
          if (firstPart.length > 1) {
            firstPart =
                firstPart.substring(0, 1) + '*' * (firstPart.length - 1);
          }
          String secondPart = domainParts[0];
          if (secondPart.length > 1) {
            secondPart =
                secondPart.substring(0, 1) + '*' * (secondPart.length - 1);
          }
          String thirdPart = domainParts.sublist(1).join('.');
          formattedEmail.value = '$firstPart@$secondPart.$thirdPart';
        }
      }
    }
  }

  RxBool passTerisi = false.obs;

  void PasswordTerisi() {
    if (passLoginC.text.isNotEmpty) {
      passTerisi.value = true;
    } else {
      passTerisi.value = false;
    }
  }

  //
  RxBool loadingLogin = false.obs;
  RxBool emailAtauPassSalah = false.obs;

  void loginWithEmail() async {
    emailC.emailDaftarFN.unfocus();
    emailLoginFN.unfocus();
    passLoginFN.unfocus();
    try {
      loadingLogin.value = true;
      var response = await http.post(
        Uri.parse(login_),
        body: {
          "email": emailLoginC.text.toLowerCase(),
          "password": passLoginC.text,
        },
      );
      loadingLogin.value = false;
      Map<String, dynamic> logdata =
          jsonDecode(response.body) as Map<String, dynamic>;

      print(response.body);
      print(emailLoginC.text);
      // print(emailC.emailDaftarC.text);

      if (response.statusCode >= 200 && response.statusCode <= 210) {
        final box = GetStorage();
        if (box.read("dataIngatSaya") != null) {
          box.remove("dataIngatSaya");
        }

        if (ingatSaya.isTrue) {
          box.write(
            "dataIngatSaya",
            {"email": emailLoginC.text, "password": passLoginC.text},
          );
        }

        checkAndHandlePermissions();
      } else if (logdata["message"] == "Email / Password Salah") {
        emailAtauPassSalah.value = true;
      } else {
        loadingLogin.value = false;

        Get.dialog(
          Dialog_KesalahanServer(
            onReload: loginWithGoogle,
          ),
        );
      }
    } catch (e) {
      print(e);
      loadingLogin.value = false;
      Get.dialog(
        Dialog_Koneksi_Internet_Terganggu(
          onReload: loginWithEmail,
        ),
      );
    }
  }

  ///
  Future<void> checkAndHandlePermissions() async {
    final status = await Permission.location.request();

    if (status.isGranted) {
      // Izin diberikan, arahkan pengguna ke rute HOME
      Get.offNamed(Routes.HOME);
    } else {
      // Izin tidak diberikan, arahkan pengguna ke rute IZINKAN_AKSES_LOKASI
      Get.offAllNamed(Routes.IZINKAN_AKSES_LOKASI);
    }
  }

  //
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  GoogleSignInAccount? currentUser;

  Future<void> loginWithGoogle() async {
    try {
      loadingLogin.value = true;

      await _googleSignIn.signIn().then((value) => currentUser = value);

      await _googleSignIn.isSignedIn().then(
        (value) async {
          if (value) {
            // jika login berhasil
            print('Anda sudah menangkap data google sign in');
            print(currentUser);

            var response = await http.post(
              Uri.parse(registerGoogle),
              body: {
                "email": currentUser?.email.toString(),
                "name": currentUser?.displayName.toString(),
                "photo": currentUser?.photoUrl.toString(),
              },
            );
            loadingLogin.value = false;
            Map<String, dynamic> logdata =
                jsonDecode(response.body) as Map<String, dynamic>;

            print(response.body);
            print(currentUser?.displayName);
            print(currentUser?.email);
            print(currentUser?.photoUrl);
            print(currentUser?.id);
            print(currentUser?.authHeaders);
            print(currentUser?.serverAuthCode);

            if (
                // logdata['message'] == "Berhasil Login"
                // &&
                response.statusCode >= 200 && response.statusCode <= 210) {
              checkAndHandlePermissions();
            } else
              Get.dialog(
                Dialog_KesalahanServer(
                  onReload: loginWithGoogle,
                ),
              );
          } else {
            // jika _googleSignIn gagal , cukup di print
            print('login gagal => tetap semangat kaka!');
            // Get.back();
          }
        },
      );

      //
    } catch (e) {
      print(e);
      loadingLogin.value = false;
      Get.dialog(
        Dialog_Koneksi_Internet_Terganggu(
          onReload: loginWithGoogle,
        ),
      );
    }
    // finally {
    //   // xx
    //   Get.back();
    // }
  }
}
