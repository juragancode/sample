import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../widgets/Auth/ButtonCustom.dart';
import '../../lupaPassword/controllers/lupa_password_controller.dart';
import '../controllers/atur_ulang_password_controller.dart';

final LupaPasswordController email = Get.put(LupaPasswordController());

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
            'Atur Ulang Password'.tr,
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
                  SizedBox(width: 16.sp),
                  Text(
                    "Buat Password Baru".tr,
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Center(
                  child: Text(
                    "Silakan buat password baru untuk akunmu".tr +
                        " (${email.emailLupaPassC.text})",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF858585),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.sp),
              Container(
                height: 40.w,
                margin: EdgeInsets.symmetric(horizontal: 16.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.r),
                  color: Color(0xFFF0F0F0),
                ),
                child: Obx(
                  () => TextField(
                    onChanged: (value) {
                      controller.checkKesamaanPassword();
                    },
                    style: TextStyle(
                      decorationThickness: 0,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF333333),
                    ),
                    focusNode: controller.passBaruFN,
                    controller: controller.passBaruC,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    obscureText: controller.obscurePassBaru.value,
                    obscuringCharacter: '*',
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masukkan password baru'.tr,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.sp, vertical: 13.sp),
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
                    size: 19.5.w,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Minimal 8 karakter.".tr,
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
                margin: EdgeInsets.symmetric(horizontal: 16.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.r),
                  color: Color(0xFFF0F0F0),
                ),
                child: Obx(
                  () => TextField(
                    onChanged: (value) {
                      controller.checkKesamaanPassword();
                    },
                    style: TextStyle(
                      decorationThickness: 0,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF333333),
                    ),
                    focusNode: controller.passBaruUlangFN,
                    controller: controller.passBaruUlangC,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    obscureText: controller.obscurePassBaruUlang.value,
                    obscuringCharacter: '*',
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masukkan ulang password baru'.tr,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.sp, vertical: 13.sp),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Center(
                  child: Text(
                    "Setelah password diubah, silakan masuk ke akunmu dengan password baru."
                        .tr,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF858585),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.sp),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Obx(
                  () => ButtonCustom(
                    gradient: LinearGradient(
                      colors: controller.loadingGantiPass == true
                          ? [
                              Primary10.withOpacity(0.8),
                              Primary10,
                            ]
                          : controller.passwordSama.isTrue &&
                                  controller.passBaruUlangC.text.length > 7
                              ? [
                                  Primary30,
                                  Primary50,
                                ]
                              : [
                                  Color(0xFFB5B5B5),
                                  Color(0xFFB5B5B5),
                                ], // Daftar warna gradient yang ingin digunakan
                      begin: Alignment.topCenter, // Posisi awal gradient
                      end: Alignment.bottomCenter, // Posisi akhir gradient
                    ),
                    controllerLoading: controller.loadingGantiPass == true,
                    onTap: controller.passwordSama.isTrue &&
                            controller.passBaruUlangC.text.length > 7 &&
                            controller.loadingGantiPass.isFalse
                        ? () {
                            controller.passBaruFN.unfocus();
                            controller.passBaruUlangFN.unfocus();
                            controller.GantiPassButton();
                          }
                        : () {},
                    splashFactory: controller.passwordSama.isTrue &&
                            controller.passBaruUlangC.text.length > 7 &&
                            controller.loadingGantiPass.isFalse
                        ? InkSplash.splashFactory
                        : NoSplash.splashFactory,
                    title: 'Lanjut'.tr,
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