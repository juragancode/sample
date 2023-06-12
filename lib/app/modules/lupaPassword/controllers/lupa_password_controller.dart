import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LupaPasswordController extends GetxController {
  // TextEditingController
  TextEditingController emailLupaPassC = TextEditingController();

  // FocusNode
  FocusNode emailLupaPassFN = FocusNode();

// validator email
  RxBool buttonLupaPass = true.obs;
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

}
