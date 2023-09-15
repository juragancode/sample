import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../routes/app_pages.dart';
import '../../register/controllers/register_controller.dart';
import '../../../constant/url_GAS_v021.dart';

final RegisterController emailC = Get.find();

class VerifikasiDaftarController extends GetxController {
  //
  // VerifikasiDaftarController
  TextEditingController verifikasiDaftarC = TextEditingController();

  //
  RxBool kodeTerisi = false.obs;
  RxBool kirimUlangKodeVerifikasi = false.obs;

  void perubahanKodeTerisi(String value) {
    if (value.length == 4) {
      kodeTerisi.value = true;
    } else {
      kodeTerisi.value = false;
    }
  }

  // Hitung Mundur
  final StreamController<int> timerController = StreamController<int>();
  final RxInt empatPuluhDetik = 41.obs;
  late Timer _timer;

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  @override
  void onClose() {
    super.onClose();
    timerController.close();
    _timer.cancel();
  }

  void startTimer() {
    empatPuluhDetik.value = 41;
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        if (empatPuluhDetik.value > 0) {
          empatPuluhDetik.value--;
          timerController.add(empatPuluhDetik.value);
        } else {
          timer.cancel();
        }
      },
    );
    kirimUlangKodeVerifikasi.value = true;
  }

  void restartTimer() {
    empatPuluhDetik.value = 41;
    kirimUlangKodeVerifikasi.value = false;
    startTimer();
  }

  RxBool loadingRegisterVerifikasiDaftar = false.obs;

  void verifikasiDaftar() async {
    try {
      loadingRegisterVerifikasiDaftar.value = true;
      var response = await http.post(
        Uri.parse(registerConfirmOtp),
        body: {
          "otp": verifikasiDaftarC.text,
          "key": emailC.emailDaftarC.text,
        },
      );
      loadingRegisterVerifikasiDaftar.value = false;
      Map<String, dynamic> logdata =
          jsonDecode(response.body) as Map<String, dynamic>;

      print(response.body);
      print(verifikasiDaftarC.text);
      print(emailC.emailDaftarC.text);

      if (logdata['success'] == true) {
        Get.offNamed(Routes.DAFTAR);
      } else if (logdata['success'] != true) {
        Get.defaultDialog(
          title: "Terjadi kesalahan",
          middleText: "${logdata['message']}",
        );
      }
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Login gagal",
        middleText: "Periksa koneksi internet",
      );
    }
  }
}
