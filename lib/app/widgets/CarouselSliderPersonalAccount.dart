import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../modules/home/controllers/home_controller.dart';
import 'Decoration/Shimmer.dart';
// import 'BoxShadow.dart';

class CarouselSliderPersonalAccount extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: controller.imageList.length,
      options: CarouselOptions(
        height: 104.w,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 5),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        viewportFraction: 1.0,
      ),
      itemBuilder: (BuildContext context, int index, int? realIndex) {
        return Container(
          decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow_01(),
            // ],
            borderRadius: BorderRadius.all(
              Radius.circular(8.r),
            ),
          ),
          margin: EdgeInsets.symmetric(horizontal: 16.sp),
          child: Stack(
            children: [
              Shimmer_02(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.r),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      controller.imageList[index],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
