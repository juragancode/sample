import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:g_a_s_app_rekadigi/app/modules/intro_screen/controllers/intro_screen_controller.dart';
import 'package:g_a_s_app_rekadigi/app/routes/app_pages.dart';
import 'package:get/get.dart';

import 'content_model.dart';

class IntroScreenView extends GetView<IntroScreenController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xfff0f0f0), // Warna latar belakang status bar
        // statusBarBrightness: Brightness.light,
        statusBarIconBrightness:
            Brightness.dark, // Kecerahan ikon di status bar
      ),
    );
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 35.h),
              Align(
                alignment: Alignment.centerRight,
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
              SizedBox(height: 10.h),
              Container(
                height: 437.h,
                child: PageView.builder(
                  controller: controller.initialP,
                  itemCount: contents.length,
                  onPageChanged: (int index) {
                    controller.currentIndex.value = index;
                    controller.initialP.jumpToPage(index);
                    controller.secondP.jumpToPage(index);
                  },
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: SvgPicture.asset(
                          contents[i].image,
                          // width: 343.w,
                          // height: 437.w,
                          // fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 25.h),
              Obx(
                () => Container(
                  // margin: EdgeInsets.only(top: 560.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contents.length,
                      (index) => buildDot(index, context),
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 20),
              Flexible(
                child: Container(
                  child: PageView.builder(
                    controller: controller.secondP,
                    itemCount: contents.length,
                    onPageChanged: (int index) {
                      controller.currentIndex.value = index;
                      controller.initialP.jumpToPage(index);
                      controller.secondP.jumpToPage(index);
                    },
                    itemBuilder: (_, i) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 20.h),
                            Text(
                              contents[i].title,
                              style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF333333),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 8.h),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 16.w),
                              child: Text.rich(
                                TextSpan(
                                  children: contents[i].description.children,
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
              ),
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
                    ], // Daftar warna gradient yang ingin digunakan
                    begin: Alignment.topCenter, // Posisi awal gradient
                    end: Alignment.bottomCenter, // Posisi akhir gradient
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
                    controller.secondP.nextPage(
                      duration: Duration(milliseconds: 100),
                      curve: Curves.bounceIn,
                    );
                  },
                ),
              ),
            ),
          )
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
