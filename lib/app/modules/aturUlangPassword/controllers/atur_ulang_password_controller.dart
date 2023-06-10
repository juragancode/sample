import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AturUlangPasswordController extends GetxController {
  // TextEditingController
  TextEditingController passBaruC = TextEditingController();
  TextEditingController passBaruUlangC = TextEditingController();

  // FocusNode
  FocusNode passBaruFN = FocusNode();
  FocusNode passBaruUlangFN = FocusNode();

  RxBool obscurePassBaru = true.obs;
  RxBool obscurePassBaruUlang = true.obs;
}