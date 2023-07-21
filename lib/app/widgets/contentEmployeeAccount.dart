import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../modules/home/controllers/home_controller.dart';
import 'FiturToko.dart';
import 'chartStatistikPenjualan.dart';

class contentEmployeeAccount extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FiturToko(),
        SizedBox(height: 16.sp),
        ChartStatistikPenjualan(),
        SizedBox(height: 30),
      ],
    );
  }
}
