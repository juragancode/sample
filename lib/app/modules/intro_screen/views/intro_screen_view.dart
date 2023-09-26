import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../model/intro_screen_model.dart';
import '../../../routes/app_pages.dart';
import '../controllers/intro_screen_controller.dart';

class IntroScreenView extends GetView<IntroScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 25.h),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: TextButton(
                    onPressed: () => Get.offAllNamed(Routes.LOGIN),
                    child: Text(
                      "Lewati".tr,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF216BC9),
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 10.h),
              Container(
                // color: Color.fromARGB(255, 255, 127, 204),
                height: Get.height - 83.h,
                child: PageView.builder(
                  controller: controller.initialP,
                  itemCount: contents.length,
                  onPageChanged: (int index) {
                    controller.currentIndex.value = index;
                  },
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: SvgPicture.asset(
                              contents[i].image,
                              width: 343.w,
                              // height: 437.w,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(height: 49.h),
                          Text(
                            contents[i].title.tr,
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF333333),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 8.h),
                          Container(
                            // margin: EdgeInsets.symmetric(horizontal: 16.w),
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: contents[i]
                                        .description1
                                        .text
                                        .toString()
                                        .tr,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF858585),
                                    ),
                                  ),
                                  TextSpan(
                                    text: contents[i]
                                        .description2
                                        .text
                                        .toString()
                                        .tr,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF858585),
                                    ),
                                  ),
                                  TextSpan(
                                    text: contents[i]
                                        .description3
                                        .text
                                        .toString()
                                        .tr,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF858585),
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              // SizedBox(height: 22.h),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(right: 16.w, left: 16.w, bottom: 16.w),
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF4D89D4),
                      Color(0xFF216BC9),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(32.r),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.r),
                    ),
                    fixedSize: Size(343.w, 54.h),
                  ),
                  child: Obx(
                    () => Text(
                      controller.currentIndex.value == contents.length - 1
                          ? "Mulai Jual Beli, Yuk!".tr
                          : "Selanjutnya".tr,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (controller.currentIndex.value == contents.length - 1) {
                      //
                      Get.offAllNamed(Routes.LOGIN);
                    }
                    controller.initialP.nextPage(
                      duration: Duration(milliseconds: 100),
                      curve: Curves.bounceIn,
                    );
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Obx(
              () => Container(
                margin: EdgeInsets.only(top: 520.w),
                // margin: EdgeInsets.only(top: (Get.height / (17)) * 11.8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                    (index) => buildDot(index, context),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 8.h,
      width: controller.currentIndex.value == index ? 32.sp : 8.sp,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: controller.currentIndex.value == index
            ? Color(0xFFFFCA08)
            : Color(0xFFD9D9D9),
      ),
    );
  }
}
