import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../routes/app_pages.dart';
import '../../../widgets/splashAccountBerhasilDibuat.dart';

class DaftarController extends GetxController {
  TextEditingController emailDaftarC = TextEditingController();
  TextEditingController namaDaftarC = TextEditingController();
  TextEditingController noHpDaftarC = TextEditingController();
  TextEditingController passDaftarC = TextEditingController();

  // FocusNode
  // FocusNode emailDaftarFN = FocusNode();
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

  @override
  void onClose() {
    super.onClose();

    noHpDaftarC.dispose();
    noHpDaftarFN.dispose();
  }

  final isNoHpValid = false.obs;

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

  RxBool loadingDaftar = false.obs;

  void buatAkun() async {
    try {
      loadingDaftar.value = true;
      var response = await http.post(
        Uri.parse("https://apigas.bagaswihant.my.id/api/register"),
        body: {
          // "otp": otpC.verifikasiDaftarC.text,
          "email": emailDaftarC.text,
          "name": namaDaftarC.text,
          "password": passDaftarC.text,
          "phone": noHpDaftarC.text,
        },
      );
      loadingDaftar.value = false;
      Map<String, dynamic> logdata =
          jsonDecode(response.body) as Map<String, dynamic>;

      print(response.body);
      print(emailDaftarC.text);
      print(namaDaftarC.text);
      print(noHpDaftarC.text);
      print(passDaftarC.text);

      if (logdata['success'] == true) {
        Get.dialog(
          splashAccountBerhasilDibuat(),
        );
        Timer(
          Duration(milliseconds: 3000),
          () {
            Get.offAllNamed(Routes.IZINKAN_AKSES_LOKASI);
          },
        );
      } else if (logdata['success'] != true) {
        Get.defaultDialog(
          title: "Terjadi kesalahan",
          middleText: "${logdata['message']}",
        );
      }
    } catch (e) {
      Get.defaultDialog(
        title: "Login gagal",
        middleText: "Periksa koneksi internet",
      );
    }
  }
}
