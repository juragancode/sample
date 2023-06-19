import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:text_divider/text_divider.dart';

import '../../../routes/app_pages.dart';
import '../../../widgets/buttonGoogle.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    if (box.read("dataIngatSaya") != null) {
      controller.ingatSaya.value = true;
      controller.emailLoginC.text = box.read("dataIngatSaya")["email"];
      controller.passLoginC.text = box.read("dataIngatSaya")["password"];
    }

    return GestureDetector(
      onTap: () {
        controller.emailLoginFN.unfocus();
        controller.passLoginFN.unfocus();
      },
      child: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 110.h,
                    height: 110.h,
                    child: SvgPicture.asset(
                      "assets/icons/iconGAS.svg",
                      fit: BoxFit.contain,
                    ),
                    // color: Colors.amber,
                  ),
                ),
                SizedBox(height: 12.w),
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
                    borderRadius: BorderRadius.circular(32.r),
                    color: Color(0xFFF0F0F0),
                  ),
                  child: Obx(
                    () => TextField(
                      onTap: () {
                        if (!controller.isTextFieldTapped.value) {
                          controller.isTextFieldTapped.value = true;
                        }
                      },
                      onChanged: (value) {
                        controller.email.value = value;
                        controller.checkEmailValidity();
                      },
                      focusNode: controller.emailLoginFN,
                      controller: controller.emailLoginC,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: controller.isValid
                            ? Color(0xFF333333)
                            : Color(0xFFFF002E),
                      ),
                      decoration: InputDecoration(
                        border: controller.isValid ||
                                !controller.isTextFieldTapped.value
                            ? InputBorder.none
                            : OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.r),
                              ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.r),
                          borderSide: BorderSide(
                            color: controller.isValid ||
                                    !controller.isTextFieldTapped.value
                                ? Colors.transparent
                                : Color(0xFFFF002E), // Warna tepi saat fokus
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.r),
                          borderSide: BorderSide(
                            color: controller.isValid ||
                                    !controller.isTextFieldTapped.value
                                ? Colors.transparent
                                : Color(
                                    0xFFFF002E), // Warna tepi saat tidak dalam fokus
                          ),
                        ),
                        suffixIcon: controller.isValid
                            ? Padding(
                                padding: EdgeInsets.only(right: 25.w),
                                child: Icon(
                                  CupertinoIcons.checkmark_alt_circle_fill,
                                  // Icons.check_circle,
                                  color: Color(0xFF0DE864),
                                ),
                              )
                            : null,
                        hintText: 'Ex: janedoe@email.com',
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.w),
                        hintStyle: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA0A0A0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.w),
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
                      onChanged: (value) {
                        controller.PasswordTerisi();
                      },
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF333333),
                      ),
                      focusNode: controller.passLoginFN,
                      controller: controller.passLoginC,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      obscureText: controller.obscureTextDaftar.value,
                      obscuringCharacter: '*',
                      autocorrect: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Masukkan password'.tr,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.w),
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
                            padding: EdgeInsets.only(right: 25.w),
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
                SizedBox(height: 8.h),
                Obx(
                  () => Visibility(
                    visible: !controller.isValid &&
                        controller.isTextFieldTapped.value,
                    child: Row(
                      children: [
                        SizedBox(width: 21.42.w),
                        Icon(
                          Icons.info,
                          color: Color(0xFFFF002E),
                          size: 20.sp,
                        ),
                        SizedBox(width: 5.sp),
                        Text(
                          controller.emailLoginC.text.isNotEmpty
                              ? "Format email tidak valid.".tr
                              : "Masukan email.".tr,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFF002E),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.ingatSaya.value =
                              !controller.ingatSaya.value;
                        },
                        child: Row(
                          children: [
                            Obx(
                              () => Container(
                                height: 19.w,
                                width: 19.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.r),

                                  // color: Color(0xFFB5B5B5),
                                  gradient: LinearGradient(
                                    colors: controller.ingatSaya.value
                                        ? [
                                            Color(0xFF4D89D4),
                                            Color(0xFF216BC9),
                                          ]
                                        : [
                                            Color(0xFFB5B5B5),
                                            Color(0xFFB5B5B5),
                                          ], // Daftar warna gradient yang ingin digunakan
                                    begin: Alignment
                                        .topCenter, // Posisi awal gradient
                                    end: Alignment
                                        .bottomCenter, // Posisi akhir gradient
                                  ),
                                ),
                                child: Icon(
                                  CupertinoIcons.checkmark_alt,
                                  size: 21.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              "Ingat saya".tr,
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () => Get.toNamed(Routes.LUPA_PASSWORD),
                        child: Text(
                          "Lupa Password?".tr,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF216BC9),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.w),
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
                    child: Obx(
                      () => ElevatedButton(
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
                          fixedSize: Size(343.w, 42.w),
                        ),
                        onPressed: controller.isValid &&
                                controller.passTerisi.isTrue
                            ? () {
                                controller.emailLoginFN.unfocus();
                                controller.passLoginFN.unfocus();
                                Timer(Duration(milliseconds: 500), () {
                                  Get.offAllNamed(Routes.IZINKAN_AKSES_LOKASI);
                                });
                              }
                            : () {},
                        child: Text(
                          "Login",
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
                SizedBox(height: 8.w),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.r),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Color(0xFF216BC9), width: 1.w),
                        backgroundColor: Colors.white,
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
                      onPressed: () => Get.toNamed(Routes.REGISTER),
                      child: Text(
                        "Daftar".tr,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF216BC9),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.w),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: TextDivider(
                    text: Text(
                      "atau masuk dengan".tr,
                      style: TextStyle(
                        color: Color(0xFF858585),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    color: Color(0xFF858585),
                  ),
                ),
                SizedBox(height: 16.w),
                ButtonGoogleAuth(),
                SizedBox(height: 16.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum punya akun GAS?".tr,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF858585),
                      ),
                    ),
                    SizedBox(width: 4.sp),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.REGISTER);
                      },
                      child: Text(
                        "Daftar".tr,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF216BC9),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
