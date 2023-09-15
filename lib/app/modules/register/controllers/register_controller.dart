import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_a_s_app_rekadigi/app/modules/daftar/controllers/daftar_controller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../routes/app_pages.dart';
import '../../../constant/url_GAS_v021.dart';

final DaftarController emailC = Get.put(DaftarController());

class RegisterController extends GetxController {
  // TextEditingController
  TextEditingController emailDaftarC = TextEditingController();

  // FocusNode
  FocusNode emailDaftarFN = FocusNode();

  // Syarat Kebijakan
  RxBool syaratKebijakanCheck = false.obs;

  // Pertama kali text diketuk
  RxBool isTextFieldTapped = false.obs;

  // validator email
  @override
  void onInit() {
    super.onInit();
    emailDaftarC.addListener(() {
      checkEmailValidity();
    });
  }

  RxBool buttonDaftar = true.obs;
  RxString email = ''.obs;
  bool get isValid {
    return RegExp(
            r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$')
        .hasMatch(email.value);
  }

  void checkEmailValidity() {
    email.value = emailDaftarC.text;
    buttonDaftar.value = isValid;
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

  /// buat formating email buat

  /// button login

  RxBool loadingRegister = false.obs;

  void registerButton() async {
    try {
      loadingRegister.value = true;
      var response = await http.post(
        Uri.parse(registerSendOtp),
        body: {
          "email": emailDaftarC.text.toLowerCase(), // dibuat huruf kecil
        },
      );
      loadingRegister.value = false;
      Map<String, dynamic> logdata =
          jsonDecode(response.body) as Map<String, dynamic>;

      emailC.emailDaftarC.value = emailDaftarC.value;

      print(response.body);
      print(emailDaftarC.text);
      print(emailC.emailDaftarC.text);

      if (logdata['success'] == true) {
        emailDaftarFN.unfocus();
        formatEmail();
        Get.toNamed(Routes.VERIFIKASI_DAFTAR);
      } else if (logdata['success'] != true) {
        Get.defaultDialog(
          title: "Terjadi kesalahan",
          middleText: "${logdata['message']}",
        );
      }
    } catch (e) {
      Get.defaultDialog(
        title: "Login gagal",
        middleText: "Periksa koneksi internet",
      );
    }
  }

  ///Daftar
  ///
  // @override
  // void onClose() {
  //   super.onClose();

  //   noHpDaftarC.dispose();
  //   noHpDaftarFN.dispose();
  // }

  // final isNoHpValid = false.obs;

  // void cekNomorHP() {
  //   final noHp = noHpDaftarC.text;
  //   final nomorValid = validateNoHp(noHp);
  //   isNoHpValid.value = nomorValid;
  // }

  // bool validateNoHp(String noHp) {
  //   // Memeriksa apakah nomor handphone dimulai dengan "08"
  //   if (noHp.startsWith("08")) {
  //     // Memeriksa apakah nomor handphone hanya terdiri dari angka
  //     final regex = RegExp(r'^\d+$');
  //     if (regex.hasMatch(noHp)) {
  //       // Memeriksa panjang nomor handphone minimal 10 digit - maksimal 13 digit
  //       if (noHp.length >= 10 && noHp.length <= 13) {
  //         return true;
  //       }
  //     }
  //   }
  //   return false;
  // }

  // /// Button Daftar
  // RxBool obscureTextDaftar = true.obs;

  // TextEditingController namaDaftarC = TextEditingController();
  // TextEditingController noHpDaftarC = TextEditingController();
  // TextEditingController passDaftarC = TextEditingController();

  // // FocusNode
  // // FocusNode emailDaftarFN = FocusNode();
  // FocusNode namaDaftarFN = FocusNode();
  // FocusNode noHpDaftarFN = FocusNode();
  // FocusNode passDaftarFN = FocusNode();

  // RxBool loadingDaftar = false.obs;

  // void buatAkun() async {
  //   try {
  //     loadingDaftar.value = true;
  //     var response = await http.post(
  //       Uri.parse("https://apigas.bagaswihant.my.id/api/registerConfirmOtp"),
  //       body: {
  //         // "otp": otpC.verifikasiDaftarC.text,
  //         "email": emailDaftarC.text,
  //         "name": namaDaftarC.text,
  //         "password": passDaftarC.text,
  //         "phone": noHpDaftarC.text,
  //       },
  //     );
  //     loadingDaftar.value = false;
  //     Map<String, dynamic> logdata =
  //         jsonDecode(response.body) as Map<String, dynamic>;

  //     print(response.body);

  //     if (logdata['success'] == true) {
  //       Get.offNamed(Routes.DAFTAR);
  //     } else if (logdata['success'] != true) {
  //       Get.defaultDialog(
  //         title: "Terjadi kesalahan",
  //         middleText: "${logdata['message']}",
  //       );
  //     }
  //   } catch (e) {
  //     Get.defaultDialog(
  //       title: "Login gagal",
  //       middleText: "Periksa koneksi internet",
  //     );
  //   }
  // }

  // void buttonDaftarActive() {
  //   if (namaDaftarC.text.isNotEmpty &&
  //       noHpDaftarC.text.isNotEmpty &&
  //       passDaftarC.text.isNotEmpty) {
  //     buttonDaftar.value = true;
  //   } else {
  //     buttonDaftar.value = false;
  //   }
  // }

  ///
}
