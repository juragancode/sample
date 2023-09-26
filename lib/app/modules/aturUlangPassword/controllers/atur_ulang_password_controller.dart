import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../constant/url_GAS_v021.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/Dialog/Dialog_KesalahanServer.dart';
import '../../../widgets/Dialog/Dialog_Koneksi_Internet_Terganggu.dart';
import '../../../widgets/splashPassBerhasilDiperbaharui.dart';
import '../../lupaPassword/controllers/lupa_password_controller.dart';
import '../../verifikasiDaftar/controllers/verifikasi_daftar_controller.dart';

class AturUlangPasswordController extends GetxController {
  final LupaPasswordController emailC = Get.put(LupaPasswordController());
  final VerifikasiDaftarController otpC = Get.put(VerifikasiDaftarController());

  // TextEditingController
  TextEditingController passBaruC = TextEditingController();
  TextEditingController passBaruUlangC = TextEditingController();

  // FocusNode
  FocusNode passBaruFN = FocusNode();
  FocusNode passBaruUlangFN = FocusNode();

  RxBool obscurePassBaru = true.obs;
  RxBool obscurePassBaruUlang = true.obs;
  RxBool passwordSama = false.obs;

  RxBool loadingGantiPass = false.obs;

  void checkKesamaanPassword() {
    if (passBaruC.text == passBaruUlangC.text) {
      passwordSama.value = true;
    } else {
      passwordSama.value = false;
    }
  }

  //
  void GantiPassButton() async {
    passBaruFN.unfocus();
    passBaruUlangFN.unfocus();
    try {
      loadingGantiPass.value = true;
      var response = await http.post(
        Uri.parse(resetPassword),
        body: {
          "email": emailC.emailLupaPassC.text.toLowerCase(),
          "password": passBaruC.text,
          "otp": otpC.verifikasiDaftarC.text,
        },
      );
      loadingGantiPass.value = false;
      // Map<String, dynamic> logdata =
      //     jsonDecode(response.body) as Map<String, dynamic>;

      print(response.body);
      print(response.statusCode);
      print(emailC.emailLupaPassC.text);
      print(passBaruC.text);
      print(otpC.verifikasiDaftarC.text);

      if (response.statusCode >= 200 && response.statusCode <= 210) {
        Get.dialog(
          splashPassBerhasilDiperbaharui(),
        );
        Timer(
          Duration(milliseconds: 3000),
          () {
            Get.offAllNamed(Routes.LOGIN);
          },
        );
      } else {
        loadingGantiPass.value = false;

        Get.dialog(
          Dialog_KesalahanServer(
            onReload: GantiPassButton,
          ),
        );
      }
    } catch (e) {
      print(e);
      loadingGantiPass.value = false;
      Get.dialog(
        Dialog_Koneksi_Internet_Terganggu(
          onReload: GantiPassButton,
        ),
      );
    }
  }
}
