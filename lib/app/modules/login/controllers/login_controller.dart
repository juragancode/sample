import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

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

  // validator email
  RxBool emailLogin = true.obs;
  RxString email = ''.obs;
  bool get isValid {
    return RegExp(
            r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$')
        .hasMatch(email.value);
  }

  void checkEmailValidity() {
    emailLogin.value = isValid;
  }
}
