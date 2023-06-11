import 'dart:async';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class VerifikasiLupaPasswordController extends GetxController {
  // TextEditingController
  TextEditingController verifikasiLupaPassC = TextEditingController();

  //
  RxBool kodeTerisi = false.obs;

  void perubahanKodeTerisi(String value) {
    if (value.length == 4) {
      kodeTerisi.value = true;
    } else {
      kodeTerisi.value = false;
    }
  }

  // Hitung Mundur
  final RxInt empatPuluhDetik = 40.obs;

  void hitungMundur() {
    empatPuluhDetik.value = 40;
    Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        if (empatPuluhDetik.value > 0) {
          empatPuluhDetik.value--;
        } else {
          timer.cancel();
        }
      },
    );
  }
}
