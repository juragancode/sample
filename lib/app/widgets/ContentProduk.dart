import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g_a_s_app_rekadigi/app/constant/colors.dart';
import 'package:get/get.dart';

import '../modules/home/controllers/home_controller.dart';
import 'ProdukPromo.dart';
import 'ProdukTerbaru.dart';
import 'ProdukTerlaris.dart';

bool buttonLihatSemua_ProdukPromo = false;

class ContentProduk extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.filterUrutkanState[1]
          ? Column(
              children: [
                SizedBox(height: 24.sp),
                ProdukPromo(visibility: buttonLihatSemua_ProdukPromo),
                SizedBox(height: 24.0.sp),
                ProdukTerbaru(),
                SizedBox(height: 24.sp),
                ProdukTerlaris(),
                SizedBox(height: 24.sp),
              ],
            )
          : Container(
              width: Get.width,
              height: Get.height / 1.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 245.w,
                    width: 245.w,
                    child: SvgPicture.asset(
                      "assets/icons/filter-kosong.svg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 27.5.sp),
                    child: Text(
                      "Ups! nggak ada produk yang sesuai dengan filter, nih",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: H333333,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.sp),
                  Text(
                    "Coba cari pakai kategori lain, ya.",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Neutral90,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
