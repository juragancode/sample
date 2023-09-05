import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../modules/home/controllers/home_controller.dart';

class gasFloatingActionButton_Bottom extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ClipOval(
        child: Container(
          width: 90.sp,
          height: 90.sp,
          child: FloatingActionButton(
            splashColor:
                controller.buttonFloat.isFalse ? Secondary50 : Primary50,
            elevation: 0.sp,
            onPressed: () {
              //
              controller.buttonFloat.value = !controller.buttonFloat.value;
            },
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0, 0.25),
                  child: Container(
                    width: 56.5.sp,
                    height: 56.5.sp,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  controller.buttonFloat.isFalse
                      ? 'assets/icons/iconGAS-Biru.svg'
                      : 'assets/icons/iconGAS-Kuning.svg',
                  fit: BoxFit.contain,
                  width: 100.sp,
                  height: 100.sp,
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}

class gasButton extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        bottom: controller.buttonFloat.isTrue ? 0 : -116.w,
        child: Container(
          width: 231.w,
          height: 116.w,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(360.r),
              topRight: Radius.circular(360.r),
            ),
          ),
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(360.r),
                    topRight: Radius.circular(360.r),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 2,
                      sigmaY: 2,
                    ),
                    child: Container(
                      color: Colors.grey.shade400.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 13.w),
                child: Column(
                  children: [
                    Container(
                      height: 32.w,
                      width: 32.w,
                      child: SvgPicture.asset(
                        'assets/icons/iconJual-Barang.svg',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      "Jual Barang",
                      style: TextStyle(
                        fontSize: 12.w,
                        fontWeight: FontWeight.w400,
                        color: Primary30,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 54.w,
                  left: 15.w,
                  right: 15.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 32.w,
                          width: 32.w,
                          child: SvgPicture.asset(
                            'assets/icons/iconMesin-Kasir.svg',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          "Mesin Kasir",
                          style: TextStyle(
                            fontSize: 12.w,
                            fontWeight: FontWeight.w400,
                            color: Primary30,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 32.w,
                          width: 32.w,
                          child: SvgPicture.asset(
                            'assets/icons/iconKeranjang.svg',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          "Keranjang",
                          style: TextStyle(
                            fontSize: 12.w,
                            fontWeight: FontWeight.w400,
                            color: Primary30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
