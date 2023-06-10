import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    title: 'Bisa Jadi Mesin Kasir',
    image: 'assets/icons/Mesin-Kasir.png',
    description: TextSpan(
      children: [
        TextSpan(
          text: "Permudah proses jual beli di tokomu dengan fitur",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xFF858585),
          ),
        ),
        TextSpan(
          text: " Mesin Kasir",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFF858585),
          ),
        ),
        TextSpan(
          text: " di aplikasi GAS.",
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
    title: 'Multi-User',
    image: 'assets/icons/Multi-User.png',
    description: TextSpan(
      children: [
        TextSpan(
          text:
              "Nikmati kemudahan bertransaksi sebagai penjual, pembeli, maupun karyawan toko.",
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
    title: 'Belanja Beragam Kebutuhan',
    image: 'assets/icons/Beragam-Kebutuhan.png',
    description: TextSpan(
      children: [
        TextSpan(
          text:
              "Pengen belanja, tapi mager dan males ngantri? Pesen aja lewat aplikasi",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xFF858585),
          ),
        ),
        TextSpan(
          text: " GAS Indonesia.",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFF858585),
          ),
        ),
        TextSpan(
          text: " Bisa dianter ke rumah!",
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
