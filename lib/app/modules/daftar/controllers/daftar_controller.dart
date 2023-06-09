import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DaftarController extends GetxController {
  // TextEditingController
  TextEditingController emailDaftarC = TextEditingController();
  TextEditingController namaDaftarC = TextEditingController();
  TextEditingController noHpDaftarC = TextEditingController();
  TextEditingController passDaftarC = TextEditingController();

  // FocusNode
  FocusNode emailDaftarFN = FocusNode();
  FocusNode namaDaftarFN = FocusNode();
  FocusNode noHpDaftarFN = FocusNode();
  FocusNode passDaftarFN = FocusNode();

  RxBool isLoading = false.obs;

  RxBool obscureTextDaftar = true.obs;
}
