import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_a_s_app_rekadigi/app/constant/colors.dart';
import 'package:g_a_s_app_rekadigi/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/Auth/ButtonCustom.dart';

import '../controllers/lupa_password_controller.dart';
import '../../../widgets/Auth/TextfieldEmail.dart' as cc;

class LupaPasswordView extends GetView<LupaPasswordController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //
        controller.emailLupaPassFN.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0, // jarak antara leading dan title
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
              color: Secondary50,
            ),
          ),
          title: Text(
            'Lupa Password?'.tr,
            style: TextStyle(
              color: Color(0xFF333333),
              fontSize: 15.5.w,
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
                    "Atur Ulang Password".tr,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 8.w),
                ],
              ),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Center(
                  child: Text(
                    "Silakan masukkan e-mail kamu yang terdaftar. Selanjutnya, kami akan mengirimkan kode verifikasi untuk mengatur ulang password."
                        .tr,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Neutral90,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.sp),
              Row(
                children: [
                  SizedBox(width: 34.sp),
                  Obx(
                    () => Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 13.5.w,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: controller.isValid ||
                                !controller.isTextFieldTapped.value
                            ? H333333
                            : Error50,
                      ),
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
                    style: TextStyle(
                      decorationThickness: 0,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: controller.isValid ? H333333 : Error50,
                    ),
                    focusNode: controller.emailLupaPassFN,
                    controller: controller.emailLupaPassC,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.emailAddress,
                    textCapitalization: TextCapitalization.none,
                    inputFormatters: [
                      cc.LowerCaseTextFormatter(),
                    ],
                    autocorrect: false,
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
                              : Error50, // Warna tepi saat fokus
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.r),
                        borderSide: BorderSide(
                          color: controller.isValid ||
                                  !controller.isTextFieldTapped.value
                              ? Colors.transparent
                              : Error50, // Warna tepi saat tidak dalam fokus
                        ),
                      ),
                      suffixIcon: controller.isValid &&
                              controller.emailTidakTerdaftar.isFalse
                          ? Padding(
                              padding: EdgeInsets.only(right: 21.42.w),
                              child: Icon(
                                CupertinoIcons.checkmark_alt_circle_fill,
                                color: Success50,
                                size: 20.w,
                              ),
                            )
                          : SizedBox(width: 0),
                      hintText: 'Ex: janedoe@email.com',
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 18.sp, vertical: 10.sp),
                      hintStyle: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: controller.isValid ||
                                !controller.isTextFieldTapped.value
                            ? Neutral70
                            : Error10,
                      ),
                    ),
                  ),
                ),
              ),
              Obx(
                () => Visibility(
                  visible: controller.emailTidakTerdaftar.isTrue,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.sp),
                    child: Column(
                      children: [
                        SizedBox(height: 5.sp),
                        Row(
                          children: [
                            SizedBox(width: 4.w),
                            Icon(
                              Icons.info,
                              color: Error50,
                              size: 20.sp,
                            ),
                            SizedBox(width: 5.sp),
                            Text(
                              'Gunakan email lain, email tidak terdaftar.',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: Error50,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.sp),
              Obx(
                () => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  child: ButtonCustom(
                    gradient: LinearGradient(
                      colors: controller.loadingGantiPassword == true
                          ? [
                              Primary10.withOpacity(0.8),
                              Primary10,
                            ]
                          : controller.isValid
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
                    controllerLoading: controller.loadingGantiPassword == true,
                    onTap: controller.isValid &&
                            controller.loadingGantiPassword.isFalse
                        ? () {
                            controller.emailLupaPassFN.unfocus();
                            controller.resetPassButton();
                            print(controller.emailLupaPassC.text);
                          }
                        : () {},
                    splashFactory: controller.isValid &&
                            controller.loadingGantiPassword.isFalse
                        ? InkSplash.splashFactory
                        : NoSplash.splashFactory,
                    title: 'Selanjutnya'.tr,
                  ),
                ),
              ),
              // Center(
              //   child: Obx(
              //     () => DecoratedBox(
              //       decoration: BoxDecoration(
              //         gradient: LinearGradient(
              //           colors: controller.isValid
              //               ? [
              //                   Color(0xFF4D89D4),
              //                   Color(0xFF216BC9),
              //                 ]
              //               : [
              //                   Color(0xFFB5B5B5),
              //                   Color(0xFFB5B5B5),
              //                 ], // Daftar warna gradient yang ingin digunakan
              //           begin: Alignment.topCenter, // Posisi awal gradient
              //           end: Alignment.bottomCenter, // Posisi akhir gradient
              //         ),
              //         borderRadius: BorderRadius.circular(32.r),
              //       ),
              //       child: Obx(
              //         () => ElevatedButton(
              //           style: ElevatedButton.styleFrom(
              //             surfaceTintColor: Colors.transparent,
              //             splashFactory: controller.isValid
              //                 ? InkSplash.splashFactory
              //                 : NoSplash.splashFactory,
              //             backgroundColor: Colors.transparent,
              //             shadowColor: Colors.transparent,
              //             textStyle: TextStyle(
              //               fontSize: 16.sp,
              //               fontFamily: 'Poppins',
              //               fontWeight: FontWeight.w600,
              //             ),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(32.r),
              //             ),
              //             fixedSize: Size(343.w, 42.w),
              //           ),
              //           // onPressed: () =>
              //           // Get.toNamed(Routes.VERIFIKASI_LUPA_PASSWORD),
              //           onPressed: controller.isValid
              //               ? () {
              //                   controller.formatEmail();
              //                   Get.toNamed(Routes.VERIFIKASI_LUPA_PASSWORD);
              //                 }
              //               : () {},
              //           child: Text(
              //             "Selanjutnya".tr,
              //             style: TextStyle(
              //               fontSize: 16.sp,
              //               fontFamily: 'Poppins',
              //               fontWeight: FontWeight.w600,
              //               // color: Color(0xFF216BC9),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
