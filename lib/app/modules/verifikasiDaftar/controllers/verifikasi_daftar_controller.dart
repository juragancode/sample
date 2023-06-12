import 'dart:async';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class VerifikasiDaftarController extends GetxController {
  // TextEditingController
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
}
