import 'dart:async';
// import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_a_s_app_rekadigi/app/modules/register/controllers/register_controller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../constant/url_GAS_v021.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/Dialog/Dialog_KesalahanServer.dart';
import '../../../widgets/Dialog/Dialog_Koneksi_Internet_Terganggu.dart';
import '../../../widgets/splashAccountBerhasilDibuat.dart';

final RegisterController emailC = Get.put(RegisterController());

class DaftarController extends GetxController {
  // TextEditingController emailDaftarC = TextEditingController();
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

  // Pertama kali no Hp diketuk
  RxBool noHpDiklik = false.obs;

  RxString password = ''.obs;

  void pass() {
    password.value = passDaftarC.value.text;
  }

  bool validateNoHp(String noHp) {
    // Memeriksa apakah nomor handphone dimulai dengan "08"
    if (noHp.startsWith("08")) {
      noHpDiklik.value = false;

      // Memeriksa apakah nomor handphone hanya terdiri dari angka
      final regex = RegExp(r'^\d+$');
      if (regex.hasMatch(noHp)) {
        noHpDiklik.value = false;

        // Memeriksa panjang nomor handphone minimal 10 digit - maksimal 13 digit
        if (noHp.length >= 10 && noHp.length <= 13) {
          noHpDiklik.value = false;

          return true;
        } else {
          noHpDiklik.value = true;
        }
      } else {
        noHpDiklik.value = true;
      }
    } else {
      noHpDiklik.value = true;
    }

    return false;
  }

  RxBool loadingDaftar = false.obs;

  void buatAkun() async {
    try {
      loadingDaftar.value = true;
      var response = await http.post(
        Uri.parse(register),
        body: {
          // "otp": otpC.verifikasiDaftarC.text,

          "email": emailC.emailDaftarC.text.toLowerCase(),

          // "email": "hahaha@gmail.com",
          "name": namaDaftarC.text,
          "password": passDaftarC.text,
          "phone": noHpDaftarC.text,
        },
      );
      loadingDaftar.value = false;
      print(response.statusCode);
      // print(emailDaftarC.text);
      print(emailC.emailDaftarC.text);
      print(namaDaftarC.text);
      print(noHpDaftarC.text);
      print(passDaftarC.text);
      print(response.body);

      // Map<String, dynamic> logdata =
      //     jsonDecode(response.body) as Map<String, dynamic>;

      if (response.statusCode >= 200 && response.statusCode <= 210) {
        Get.dialog(
          splashAccountBerhasilDibuat(),
        );
        Timer(
          Duration(milliseconds: 3000),
          () {
            Get.offAllNamed(Routes.IZINKAN_AKSES_LOKASI);
          },
        );
      } else
        Get.dialog(
          Dialog_KesalahanServer(
            onReload: buatAkun,
          ),
        );
    } catch (e) {
      print(e);
      loadingDaftar.value = false;
      Get.dialog(
        Dialog_Koneksi_Internet_Terganggu(
          onReload: buatAkun,
        ),
      );
    }
  }
}
