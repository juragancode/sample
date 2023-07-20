import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../modules/home/controllers/home_controller.dart';
import 'ProdukPromoExplore.dart';
import 'ProdukTerbaru.dart';
import 'ProdukTerlaris.dart';

class ContentExplorer extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 24.sp),
        ProdukPromoExplore(),
        SizedBox(height: 24.0.sp),
        ProdukTerbaru(),
        SizedBox(height: 24.sp),
        ProdukTerlaris(),
        SizedBox(height: 24.sp),
      ],
    );
  }
}
