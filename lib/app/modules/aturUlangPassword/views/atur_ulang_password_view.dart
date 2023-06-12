import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

import '../../../utils/widgets/splashPassBerhasilDiperbaharui.dart';
import '../controllers/atur_ulang_password_controller.dart';

class AturUlangPasswordView extends GetView<AturUlangPasswordController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.passBaruFN.unfocus();
        controller.passBaruUlangFN.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0, // Atur jarak antara leading dan title
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: IconButton(
              onPressed: () {
                print("Back button pressed");
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                size: 31,
                color: Color(0xFFFFCA08),
              ),
            ),
          ),
          title: Text(
            'Atur Ulang Password',
            style: TextStyle(
              color: Color(0xFF333333),
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          // centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(width: 18.w),
                  Text(
                    "Buat Password Baru",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 8),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  SizedBox(width: 18.w),
                  Flexible(
                    child: Wrap(
                      children: [
                        Text(
                          "Silakan buat password baru untuk akunmu (naufalwibawanto@gmail.com)",
                          style: TextStyle(
                            fontSize: 12.sp.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF858585),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.w),
              SizedBox(height: 4.w),
              Container(
                height: 40.w,
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.r),
                  color: Color(0xFFF0F0F0),
                ),
                child: Obx(
                  () => TextField(
                    onChanged: (value) {
                      controller.checkKesamaanPassword();
                    },
                    focusNode: controller.passBaruFN,
                    controller: controller.passBaruC,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    obscureText: controller.obscurePassBaru.value,
                    obscuringCharacter: '*',
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masukkan password baru',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                      hintStyle: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA0A0A0),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          controller.obscurePassBaru.value =
                              !controller.obscurePassBaru.value;
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Icon(
                            controller.obscurePassBaru.value
                                ? CupertinoIcons.eye_slash_fill
                                : CupertinoIcons.eye_fill,
                            color: Color(0xFF858585),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 4.w),
              Row(
                children: [
                  SizedBox(width: 21.42.w),
                  Icon(
                    Icons.info,
                    color: Color(0xFF4D89D4),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    "Minimal 8 karakter.",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA0A0A0),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.w),
              Container(
                height: 40.w,
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.r),
                  color: Color(0xFFF0F0F0),
                ),
                child: Obx(
                  () => TextField(
                    onChanged: (value) {
                      controller.checkKesamaanPassword();
                    },
                    focusNode: controller.passBaruUlangFN,
                    controller: controller.passBaruUlangC,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    obscureText: controller.obscurePassBaruUlang.value,
                    obscuringCharacter: '*',
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masukkan ulang password baru',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                      hintStyle: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA0A0A0),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          controller.obscurePassBaruUlang.value =
                              !controller.obscurePassBaruUlang.value;
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Icon(
                            controller.obscurePassBaruUlang.value
                                ? CupertinoIcons.eye_slash_fill
                                : CupertinoIcons.eye_fill,
                            color: Color(0xFF858585),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.w),
              Row(
                children: [
                  SizedBox(width: 18.w),
                  Flexible(
                    child: Wrap(
                      children: [
                        Text(
                          "Setelah password diubah, silakan masuk ke akunmu dengan password baru.",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF858585),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.w),
              Center(
                child: Obx(
                  () => DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: controller.passwordSama.isTrue
                            ? [
                                Color(0xFF4D89D4),
                                Color(0xFF216BC9),
                              ]
                            : [
                                Color(0xFFB5B5B5),
                                Color(0xFFB5B5B5),
                              ], // Daftar warna gradient yang ingin digunakan
                        begin: Alignment.topCenter, // Posisi awal gradient
                        end: Alignment.bottomCenter, // Posisi akhir gradient
                      ),
                      borderRadius: BorderRadius.circular(32.r),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        splashFactory: controller.passwordSama.isTrue
                            ? InkSplash.splashFactory
                            : NoSplash.splashFactory,
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
                        fixedSize: Size(343.w, 42.w),
                      ),
                      onPressed: controller.passwordSama.isTrue
                          ? () {
                              Get.dialog(
                                splashPassBerhasilDiperbaharui(),
                              );
                              Timer(
                                Duration(milliseconds: 3000),
                                () {
                                  Get.offAllNamed(Routes.LOGIN);
                                },
                              );
                            }
                          : () {},
                      child: Text(
                        "Lanjut",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          // color: Color(0xFF216BC9),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



/// Catatan logic
/// Jika pass lama != (pass baru == ulang pass baru ) -> pass berhasil dirubah -> success