import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../constant/url_GAS_v021.dart';
import '../../../routes/app_pages.dart';

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

  //
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

  void loginWithEmail() async {
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

      if (
          // logdata['message'] == "Berhasil Login" &&
          response.statusCode == 200) {
        Get.offNamed(Routes.HOME);
      } else {
        Get.defaultDialog(
          title: "Terjadi kesalahan",
          middleText: "${logdata['message']}",
        );
      }
      ;
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Login gagal",
        middleText: "Periksa koneksi internet",
      );
    }
  }
}
