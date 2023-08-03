import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../modules/home/controllers/home_controller.dart';
import 'BannerPromo.dart';
import 'FiturToko.dart';
import 'chartStatistikPenjualan.dart';

String svg = "assets/icons/ContentIcons/Yellow-Kelola-Produk.svg";
String title = "Kelola Produk";
String deskripsi = "Kelola stok, varian, dan kategori produkmu";

class contentShopAccount extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FiturToko(svg: svg, title: title, deskripsi: deskripsi),
        SizedBox(height: 16.sp),
        BannerPromo(),
        SizedBox(height: 16.sp),
        ChartStatistikPenjualan(),
        SizedBox(height: 30),
      ],
    );
  }
}
