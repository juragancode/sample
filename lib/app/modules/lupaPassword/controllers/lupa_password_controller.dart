import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'dart:convert';

import 'package:http/http.dart' as http;
import '../../../widgets/Dialog/Dialog_KesalahanServer.dart';
import '../../../widgets/Dialog/Dialog_Koneksi_Internet_Terganggu.dart';

import '../../../routes/app_pages.dart';
import '../../../constant/url_GAS_v021.dart';

class LupaPasswordController extends GetxController {
  // TextEditingController
  TextEditingController emailLupaPassC = TextEditingController();

  // FocusNode
  FocusNode emailLupaPassFN = FocusNode();

// Pertama kali text diketuk
  RxBool isTextFieldTapped = false.obs;

  // validator email
  @override
  void onInit() {
    super.onInit();
    emailLupaPassC.addListener(
      () {
        checkEmailValidity();
      },
    );
  }

// validator email
  RxBool buttonLupaPass = true.obs;
  RxBool emailTidakTerdaftar = false.obs;
  RxBool loadingGantiPassword = false.obs;

  RxString email = ''.obs;
  bool get isValid {
    return RegExp(
            r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$')
        .hasMatch(email.value);
  }

  void checkEmailValidity() {
    buttonLupaPass.value = isValid;
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

  void resetPassButton() async {
    try {
      loadingGantiPassword.value = true;
      var response = await http.post(
        Uri.parse(resetPasswordSendOtp),
        body: {
          "email": emailLupaPassC.text.toLowerCase(), // dibuat huruf kecil
        },
      );
      loadingGantiPassword.value = false;
      print(response.statusCode);

      Map<String, dynamic> logdata =
          jsonDecode(response.body) as Map<String, dynamic>;

      if (response.statusCode >= 200 && response.statusCode <= 210) {
        formatEmail();
        print(emailLupaPassC.text);
        print(response.body);

        Get.toNamed(Routes.VERIFIKASI_LUPA_PASSWORD);
      } else if (logdata["0"]["email"] is List) {
        final emailErrors = logdata["0"]["email"] as List;

        if (emailErrors.isNotEmpty) {
          final errorMessage = emailErrors[0];

          if (errorMessage ==
              "The email field must be a valid email address.") {
            emailTidakTerdaftar.value = true;
          }
          // else if (errorMessage ==
          //     "The email field must be a valid email address.") {}
        }
      } else
        Get.dialog(
          Dialog_KesalahanServer(
            onReload: resetPassButton,
          ),
        );
    } catch (e) {
      print(e);
      loadingGantiPassword.value = false;
      Get.dialog(
        Dialog_Koneksi_Internet_Terganggu(
          onReload: resetPassButton,
        ),
      );
    }
  }
}
