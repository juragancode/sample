import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../modules/home/controllers/home_controller.dart';
import 'BelanjaanTerakhir.dart';
import 'CarouselSliderPersonalAccount.dart';
import 'ProdukPromo.dart';
import 'kategoriLainnyaHomePage.dart';
import 'plazaTokoHomePage.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);
bool buttonLihatSemua_ProdukPromo = true;

class contentPersonalAccount extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSliderPersonalAccount(),
        SizedBox(height: 24.sp),
        PlazaTokoHomePage(),
        SizedBox(height: 24.sp),
        KategoriLainnyaHomePage(),
        SizedBox(height: 24.sp),
        ProdukPromo(visibility: buttonLihatSemua_ProdukPromo),
        SizedBox(height: 24.0.sp),
        BelanjaanTerakhir(),
        SizedBox(height: 24.0.sp),
      ],
    );
  }
}
