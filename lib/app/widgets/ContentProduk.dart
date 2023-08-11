import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../modules/home/controllers/home_controller.dart';
import 'FilterKosong.dart';
import 'ProdukPromo.dart';
import 'ProdukTerbaru.dart';
import 'ProdukTerlaris.dart';

bool buttonLihatSemua_ProdukPromo = false;

class ContentProduk extends GetView<ProdukController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.filterUrutkanState[1]
          ? Column(
              children: [
                SizedBox(height: 24.sp),
                ProdukPromo(visibility: buttonLihatSemua_ProdukPromo),
                ProdukTerbaru(),
                SizedBox(height: 24.sp),
                ProdukTerlaris(),
              ],
            )
          : FilterKosong(
              title: "Ups! nggak ada produk yang sesuai dengan filter, nih",
              subtitle: "Coba cari pakai kategori lain, ya.",
            ),
    );
  }
}
