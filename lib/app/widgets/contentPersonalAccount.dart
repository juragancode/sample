import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../modules/home/controllers/home_controller.dart';
import 'BelanjaanTerakhir.dart';
import 'ProdukPromo.dart';
import 'kategoriLainnyaHomePage.dart';
import 'plazaTokoHomePage.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

class contentPersonalAccount extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: controller.imageList.length,
          options: CarouselOptions(
            height: 104.w,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            viewportFraction: 1.0,
            onPageChanged: (int index, CarouselPageChangedReason reason) {
              controller.currentIndex.value = index;
            },
          ),
          itemBuilder: (BuildContext context, int index, int? realIndex) {
            return Container(
              // color: Colors.amber,
              margin: EdgeInsets.symmetric(horizontal: 16.sp),

              child: Image.asset(
                controller.imageList[index],
                fit: BoxFit.contain,
              ),
            );
          },
        ),
        SizedBox(height: 24.sp),
        PlazaTokoHomePage(),
        SizedBox(height: 24.sp),
        KategoriLainnyaHomePage(),
        SizedBox(height: 24.sp),
        ProdukPromo(),
        SizedBox(height: 24.0.sp),
        BelanjaanTerakhir(),
        SizedBox(height: 24.0.sp),
      ],
    );
  }
}
