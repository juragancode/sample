import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DaftarTokoController extends GetxController {
  TextEditingController namaTokoC = TextEditingController();
  TextEditingController emailTokoC = TextEditingController();
  TextEditingController noHpTokoC = TextEditingController();
  TextEditingController tipeTokoC = TextEditingController();
  TextEditingController kategoriTokoC = TextEditingController();

  // FocusNode
  FocusNode namaTokoFN = FocusNode();
  FocusNode emailTokoFN = FocusNode();
  FocusNode noHpTokoFN = FocusNode();
  FocusNode tipeTokoFN = FocusNode();
  FocusNode kategoriTokoFN = FocusNode();

  final List<String> tipeToko = [
    'Individu',
    'Perusahaan',
  ];

  final List<String> kategoriToko = [
    'Fashion',
    'Kebutuhan Harian',
  ];

  String? tipeTokoDipilih;

  RxString tipeToko_ = "".obs;
  RxString kategoriToko_ = "".obs;

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();

  void ubahNilai() {
    //
    tipeToko_.value = tipeTokoC.text;
    kategoriToko_.value = kategoriTokoC.text;
  }

  RxString email = "".obs;

  bool get isValid {
    return RegExp(
            r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$')
        .hasMatch(email.value);
  }

  void checkEmailValidity() {
    email.value = emailTokoC.text;
  }
}
