import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RegisterController extends GetxController {
  // TextEditingController
  TextEditingController emailDaftarC = TextEditingController();
  TextEditingController passDaftarC = TextEditingController();

  // FocusNode
  FocusNode emailDaftarFN = FocusNode();
  FocusNode passDaftarFN = FocusNode();
}
