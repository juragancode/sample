import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../modules/home/controllers/home_controller.dart';

class TabBarExplore extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      controller.isTokoIndex.value = 0;
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              controller.isTokoIndex.value = 0;
                            },
                            child: Container(
                              width: Get.width / 2,
                              child: Column(
                                children: [
                                  SizedBox(height: 14.sp),
                                  Text(
                                    "Produk",
                                    style: TextStyle(
                                      fontSize: 11.5.w,
                                      fontWeight: FontWeight.w600,
                                      color: controller.isTokoIndex.value == 0
                                          ? H333333
                                          : Neutral50,
                                    ),
                                  ),
                                  SizedBox(height: 4.sp),
                                  SizedBox(height: 7.sp),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              controller.isTokoIndex.value = 1;
                            },
                            child: Container(
                              width: Get.width / 2,
                              child: Column(
                                children: [
                                  SizedBox(height: 14.sp),
                                  Text(
                                    "Toko",
                                    style: TextStyle(
                                      fontSize: 11.5.w,
                                      fontWeight: FontWeight.w600,
                                      color: controller.isTokoIndex.value == 1
                                          ? H333333
                                          : Neutral50,
                                    ),
                                  ),
                                  SizedBox(height: 4.sp),
                                  SizedBox(height: 7.sp),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              AnimatedPositioned(
                bottom: 0,
                left: controller.isTokoIndex.value == 0
                    ? 16.w
                    : (Get.width - ((Get.width / 2) - 32.w)) - 16.w,
                duration: Duration(milliseconds: 300),
                child: Container(
                  height: 6.w,
                  width: ((Get.width / 2) - 32.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.r),
                      topRight: Radius.circular(32.r),
                    ),
                    color: Secondary50,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: Get.width,
            height: 0.5.sp,
            color: Neutral50,
          ),
        ],
      ),
    );
  }
}
