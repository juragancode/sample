import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:text_divider/text_divider.dart';

import '../../../routes/app_pages.dart';
import '../../../widgets/buttonGoogle.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.emailDaftarFN.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0, // Atur jarak antara leading dan title
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              print("Back button pressed");
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              size: 31.sp,
              color: Color(0xFFFFCA08),
            ),
          ),
          title: Text(
            'Daftar'.tr,
            style: TextStyle(
              color: Color(0xFF333333),
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          // centerTitle: true,
        ),
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
                      fit: BoxFit.cover,
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
                      focusNode: controller.emailDaftarFN,
                      controller: controller.emailDaftarC,
                      textInputAction: TextInputAction.done,
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
                SizedBox(height: 5.h),
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
                          "Format email tidak valid.".tr,
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
                SizedBox(height: 16.w),
                Center(
                  child: Obx(
                    () => DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: controller.isValid &&
                                  controller.syaratKebijakanCheck.isTrue
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
                          splashFactory: controller.isValid &&
                                  controller.syaratKebijakanCheck.isTrue
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
                        onPressed: controller.isValid &&
                                controller.syaratKebijakanCheck.isTrue
                            ? () {
                                controller.emailDaftarFN.unfocus();
                                controller.formatEmail();
                                Timer(Duration(milliseconds: 500), () {
                                  Get.toNamed(Routes.VERIFIKASI_DAFTAR);
                                });
                              }
                            : () {},
                        child: Text(
                          "Daftar".tr,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 8).sp,
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
                // SizedBox(height: 16.w),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: GestureDetector(
                    // hapus GestureDetector apabila sdh ada page Syarat & Kebijakan Privasi
                    onTap: () {
                      // controller.syaratKebijakanCheck.value =
                      //     !controller.syaratKebijakanCheck.value;
                    },
                    child: Row(
                      children: [
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              controller.syaratKebijakanCheck.value =
                                  !controller.syaratKebijakanCheck.value;
                            },
                            child: Flexible(
                              child: Container(
                                color: Colors.transparent,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 20.sp,
                                    right: 8.sp,
                                    top: 22.sp,
                                    bottom: 22.sp,
                                  ),
                                  child: Container(
                                    height: 23.w,
                                    width: 23.w,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 5,
                                          left: 2,
                                          child: Container(
                                            height: 16.w,
                                            width: 16.w,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: controller
                                                        .syaratKebijakanCheck
                                                        .value
                                                    ? Color(0xFFFFCA08)
                                                    : Color(
                                                        0xFFB5B5B5), // Warna garis tepi
                                                width:
                                                    2.0.sp, // Lebar garis tepi
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(50.r),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: controller
                                                  .syaratKebijakanCheck.value
                                              ? Positioned(
                                                  top: -2,
                                                  left: 1,
                                                  child: Icon(
                                                    CupertinoIcons
                                                        .checkmark_alt,
                                                    size: 26.sp,
                                                    color: Color(0xFF1A56A1),
                                                  ),
                                                )
                                              : null,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(width: 7.w),
                        Flexible(
                          child: Container(
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        "Dengan mendaftar, kamu menyetujui".tr,
                                    style: new TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF858585),
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Syarat & Kebijakan Privasi ".tr,
                                    style: new TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF216BC9),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "GAS Indonesia.".tr,
                                    style: new TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF858585),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
