import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../widgets/splashAccountBerhasilDibuat.dart';
import '../controllers/daftar_controller.dart';

// final RegisterController controller = Get.put(RegisterController());

class DaftarView extends GetView<DaftarController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.namaDaftarFN.unfocus();
        controller.noHpDaftarFN.unfocus();
        controller.passDaftarFN.unfocus();
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
              size: 31,
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10.w),

              // Email
              //

              // Row(
              //   children: [
              //     SizedBox(width: 34.w),
              //     Text(
              //       "Email",
              //       style: TextStyle(
              //         fontSize: 14.sp,
              //         fontFamily: 'Poppins',
              //         fontWeight: FontWeight.w600,
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(height: 4.w),
              // Container(
              //   height: 40.w,
              //   margin: EdgeInsets.symmetric(horizontal: 16.w),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(32.sp),
              //     color: Color(0xFFF0F0F0),
              //   ),
              //   child: TextField(
              //     onChanged: (value) {
              //       controller.checkEmailValidity();
              //       controller.email.value = value;
              //     },
              //     style: TextStyle(
              //       fontSize: 12.sp,
              //       fontWeight: FontWeight.w400,
              //       color: Color(0xFF333333),
              //     ),
              //     enabled: false,
              //     focusNode: controller.emailDaftarFN,
              //     controller: email.emailDaftarC,
              //     textInputAction: TextInputAction.next,
              //     keyboardType: TextInputType.emailAddress,
              //     autocorrect: false,
              //     decoration: InputDecoration(
              //       border: InputBorder.none,
              //       hintText: 'Ex: janedoe@email.com',
              //       contentPadding:
              //           EdgeInsets.symmetric(horizontal: 20.w, vertical: 13.w),
              //       hintStyle: TextStyle(
              //         fontSize: 12.sp,
              //         fontFamily: 'Poppins',
              //         fontWeight: FontWeight.w400,
              //         color: Color(0xFFA0A0A0),
              //       ),
              //     ),
              //   ),
              // ),

              // SizedBox(height: 12.w),

              Row(
                children: [
                  SizedBox(width: 34.w),
                  Text(
                    "Nama Lengkap".tr,
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
                  onChanged: (value) {
                    controller.buttonDaftarActive();
                  },
                  style: TextStyle(
                    decorationThickness: 0,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF333333),
                  ),
                  focusNode: controller.namaDaftarFN,
                  controller: controller.namaDaftarC,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Tulis nama lengkapmu'.tr,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 13.w),
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
                    "No. HP".tr,
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
                  onChanged: (value) {
                    controller.buttonDaftarActive();
                    controller.cekNomorHP();
                  },
                  style: TextStyle(
                    decorationThickness: 0,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF333333),
                  ),
                  focusNode: controller.noHpDaftarFN,
                  controller: controller.noHpDaftarC,
                  textInputAction: TextInputAction.next,
                  // hanya dimulai dengan 08
                  keyboardType: TextInputType.number,
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Ex: 081234567899',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 13.w),
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
                ),
                child: Obx(
                  () => TextField(
                    onChanged: (value) {
                      controller.buttonDaftarActive();
                    },
                    style: TextStyle(
                      decorationThickness: 0,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF333333),
                    ),
                    focusNode: controller.passDaftarFN,
                    controller: controller.passDaftarC,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    obscureText: controller.obscureTextDaftar.value,
                    obscuringCharacter: '*',
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masukkan password'.tr,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 13.w),
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
              SizedBox(height: 24.w),
              // SizedBox(height: 4),
              Center(
                child: Obx(
                  () => DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors:

                            // controller.isValid &&

                            controller.buttonDaftar.isTrue &&
                                    controller.isNoHpValid.value
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
                        splashFactory:

                            // controller.isValid &&

                            controller.buttonDaftar.isTrue &&
                                    controller.isNoHpValid.value
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
                      onPressed:

                          // controller.isValid &&

                          controller.buttonDaftar.isTrue &&
                                  controller.isNoHpValid.value
                              ? () {
                                  controller.buatAkun();
                                }
                              : () {},
                      child: Text(
                        "Buat Akun".tr,
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
            ],
          ),
        ),
      ),
    );
  }
}
