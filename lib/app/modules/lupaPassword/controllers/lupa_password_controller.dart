import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LupaPasswordController extends GetxController {
  // TextEditingController
  TextEditingController lupaPassC = TextEditingController();

  // FocusNode
  FocusNode lupaPassFN = FocusNode();

//
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
}
