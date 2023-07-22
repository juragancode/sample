import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../modules/home/controllers/home_controller.dart';
import 'FiturToko.dart';
import 'chartStatistikPenjualan.dart';

String svg = "assets/icons/icon-Absensi-Blue.svg";
String title = "Absensi";
String deskripsi = "Isi kehadiranmu sesuai jadwal shift harian.";

class contentEmployeeAccount extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FiturToko(svg: svg, title: title, deskripsi: deskripsi),
        SizedBox(height: 16.sp),
        ChartStatistikPenjualan(),
        SizedBox(height: 30),
      ],
    );
  }
}
