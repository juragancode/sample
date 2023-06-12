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

  //
  RxBool isLoading = false.obs;
  RxBool obscureTextDaftar = true.obs;
  RxBool buttonDaftar = false.obs;

  void buttonDaftarActive() {
    if (namaDaftarC.text.isNotEmpty &&
        noHpDaftarC.text.isNotEmpty &&
        passDaftarC.text.isNotEmpty) {
      buttonDaftar.value = true;
    } else {
      buttonDaftar.value = false;
    }
  }

  // Validator email
  RxBool emailBenar = true.obs;
  RxString email = ''.obs;
  bool get isValid {
    return RegExp(
            r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$')
        .hasMatch(email.value);
  }

  void checkEmailValidity() {
    emailBenar.value = isValid;
  }

  final isNoHpValid = false.obs;

  @override
  void onClose() {
    noHpDaftarC.dispose();
    noHpDaftarFN.dispose();
    super.onClose();
  }

  void cekNomorHP() {
    final noHp = noHpDaftarC.text;
    final nomorValid = validateNoHp(noHp);
    isNoHpValid.value = nomorValid;
  }

  bool validateNoHp(String noHp) {
    // Memeriksa apakah nomor handphone dimulai dengan "08"
    if (noHp.startsWith("08")) {
      // Memeriksa apakah nomor handphone hanya terdiri dari angka
      final regex = RegExp(r'^\d+$');
      if (regex.hasMatch(noHp)) {
        // Memeriksa panjang nomor handphone minimal 10 digit - maksimal 13 digit
        if (noHp.length >= 10 && noHp.length <= 13) {
          return true;
        }
      }
    }
    return false;
  }
}
