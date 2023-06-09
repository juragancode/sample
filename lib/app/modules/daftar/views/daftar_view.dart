import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_a_s_app_rekadigi/app/routes/app_pages.dart';
import 'package:g_a_s_app_rekadigi/app/utils/widgets/splashAccountBerhasilDibuat.dart';
import 'package:get/get.dart';

import '../controllers/daftar_controller.dart';

class DaftarView extends GetView<DaftarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          'Daftar',
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
            SizedBox(height: 10.w),
            Row(
              children: [
                SizedBox(width: 34.w),
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.w),
            Container(
              height: 40.w,
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.sp),
                color: Color(0xFFF0F0F0),
              ),
              child: TextField(
                // focusNode: controller.lupaPassFN,
                // controller: controller.lupaPassC,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Ex: janedoe@email.com',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                  hintStyle: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A0A0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.w),
            Row(
              children: [
                SizedBox(width: 34.w),
                Text(
                  "Nama Lengkap",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.w),
            Container(
              height: 40.w,
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.sp),
                color: Color(0xFFF0F0F0),
              ),
              child: TextField(
                // focusNode: controller.lupaPassFN,
                // controller: controller.lupaPassC,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Tulis nama lengkapmu',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                  hintStyle: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A0A0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.w),
            Row(
              children: [
                SizedBox(width: 34.w),
                Text(
                  "No. HP",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.w),
            Container(
              height: 40.w,
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.sp),
                color: Color(0xFFF0F0F0),
              ),
              child: TextField(
                // focusNode: controller.lupaPassFN,
                // controller: controller.lupaPassC,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Ex: 081234567899',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                  hintStyle: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A0A0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.w),
            Row(
              children: [
                SizedBox(width: 34.w),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.w),
            Container(
              height: 40.w,
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.r),
                color: Color(0xFFF0F0F0),

                /// Warna untuk test
                // color: Color.fromARGB(255, 154, 154, 154),
              ),
              child: Obx(
                () => TextField(
                  // focusNode: controller.passLoginFN,
                  // controller: controller.passLoginC,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  obscureText: controller.obscureTextDaftar.value,
                  obscuringCharacter: '*',
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Masukkan password',
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
                        controller.obscureTextDaftar.value =
                            !controller.obscureTextDaftar.value;
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Icon(
                          controller.obscureTextDaftar.value
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
            // SizedBox(height: 4),
            Center(
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
                      borderRadius: BorderRadius.circular(32),
                    ),
                    fixedSize: Size(343.w, 42.w),
                  ),
                  onPressed: () {
                    Get.dialog(
                      splashAccountBerhasilDibuat(),
                    );
                    Timer(
                      Duration(milliseconds: 3000),
                      () {
                        Get.offAllNamed(Routes.HOME);
                      },
                    );
                  },
                  child: Text(
                    "Buat Akun",
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
          ],
        ),
      ),
    );
  }
}
