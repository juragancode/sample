import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_a_s_app_rekadigi/app/modules/daftar/controllers/daftar_controller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../widgets/Dialog/Dialog_KesalahanServer.dart';
import '../../../widgets/Dialog/Dialog_Koneksi_Internet_Terganggu.dart';

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

      if (response.statusCode >= 200 && response.statusCode <= 210) {
        emailDaftarFN.unfocus();
        formatEmail();
        Get.toNamed(Routes.VERIFIKASI_DAFTAR);
      } else
        Get.dialog(
          Dialog_KesalahanServer(),
        );
    } catch (e) {
      print(e);
      loadingRegister.value == false;
      Get.dialog(
        Dialog_Koneksi_Internet_Terganggu(),
      );
    }
  }
}
