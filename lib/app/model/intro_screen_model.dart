import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnbordingContent {
  String image;
  String title;
  TextSpan description1;
  TextSpan description2;
  TextSpan description3;

  UnbordingContent({
    required this.image,
    required this.title,
    required this.description1,
    required this.description2,
    required this.description3,
  });
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Bisa Jadi Mesin Kasir'.tr,
    image: 'assets/icons/Mesin-Kasir.svg',
    description1: TextSpan(
      text: "Permudah proses jual beli di tokomu dengan fitur".tr,
    ),
    description2: TextSpan(
      text: " Mesin Kasir".tr,
    ),
    description3: TextSpan(
      text: " di aplikasi GAS.".tr,
    ),
  ),
  UnbordingContent(
    title: 'Multi-User'.tr,
    image: 'assets/icons/Multi-User.svg',
    description1: TextSpan(
      text:
          "Nikmati kemudahan bertransaksi sebagai penjual, pembeli, maupun karyawan toko."
              .tr,
    ),
    description2: TextSpan(
      text: "".tr,
    ),
    description3: TextSpan(
      text: "".tr,
    ),
  ),
  UnbordingContent(
    title: 'Tanpa Biaya Langganan'.tr,
    image: 'assets/icons/Tanpa-Biaya-Langganan.svg',
    description1: TextSpan(
      text:
          "Nggak perlu lagi mikirin biaya langganan. Pakai aplikasi GAS Indonesia, kamu bebas nikmatin semua fitur "
              .tr,
    ),
    description2: TextSpan(
      text: "GRATIS!".tr,
    ),
    description3: TextSpan(
      text: "".tr,
    ),
  ),
  UnbordingContent(
    title: 'Belanja Beragam Kebutuhan'.tr,
    image: 'assets/icons/Beragam-Kebutuhan.svg',
    description1: TextSpan(
      text:
          "Pengen belanja, tapi mager dan males ngantri? Pesen aja lewat aplikasi"
              .tr,
    ),
    description2: TextSpan(
      text: " GAS Indonesia.".tr,
    ),
    description3: TextSpan(
      text: " Bisa dianter ke rumah!".tr,
    ),
  ),
];
