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
}
