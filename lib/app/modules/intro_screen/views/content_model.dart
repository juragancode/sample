import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UnbordingContent {
  String image;
  String title;
  TextSpan description;

  UnbordingContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Bisa Jadi Mesin Kasir'.tr,
    image: 'assets/icons/Mesin-Kasir.svg',
    description: TextSpan(
      children: [
        TextSpan(
          text: "Permudah proses jual beli di tokomu dengan fitur".tr,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xFF858585),
          ),
        ),
        TextSpan(
          text: " Mesin Kasir".tr,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFF858585),
          ),
        ),
        TextSpan(
          text: " di aplikasi GAS.".tr,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xFF858585),
          ),
        ),
      ],
    ),
  ),
  UnbordingContent(
    title: 'Multi-User'.tr,
    image: 'assets/icons/Multi-User.svg',
    description: TextSpan(
      children: [
        TextSpan(
          text:
              "Nikmati kemudahan bertransaksi sebagai penjual, pembeli, maupun karyawan toko."
                  .tr,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xFF858585),
          ),
        ),
      ],
    ),
  ),
  UnbordingContent(
    title: 'Belanja Beragam Kebutuhan'.tr,
    image: 'assets/icons/Beragam-Kebutuhan.svg',
    description: TextSpan(
      children: [
        TextSpan(
          text:
              "Pengen belanja, tapi mager dan males ngantri? Pesen aja lewat aplikasi"
                  .tr,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xFF858585),
          ),
        ),
        TextSpan(
          text: " GAS Indonesia.".tr,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFF858585),
          ),
        ),
        TextSpan(
          text: " Bisa dianter ke rumah!".tr,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xFF858585),
          ),
        ),
      ],
    ),
  ),
];
