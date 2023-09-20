import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../widgets/Auth/ButtonCustom.dart';
import '../controllers/daftar_controller.dart';

// final RegisterController controller = Get.put(RegisterController());
final DaftarController controller = Get.put(DaftarController());

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
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.sp, vertical: 12.sp),
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
                  onTap: () {
                    controller.noHpDiklik.value = true;
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
                  keyboardType: TextInputType.number,
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Ex: 081234567899',
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.sp, vertical: 12.sp),
                    hintStyle: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA0A0A0),
                    ),
                  ),
                ),
              ),

              Obx(
                () => Visibility(
                  visible: controller.noHpDiklik.isTrue,
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
                              'Gunakan format 08XXXXXXXXXX',
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
                      controller.pass();
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
                          horizontal: 20.sp, vertical: 12.sp),
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

              Obx(
                () => Visibility(
                  visible: controller.password.isNotEmpty &&
                      controller.password.value.length <= 7,
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
                              'Minimal 8 karakter.',
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

              SizedBox(height: 24.sp),
              // SizedBox(height: 4),
              // Center(
              //   child: Obx(
              //     () => DecoratedBox(
              //       decoration: BoxDecoration(
              //         gradient: LinearGradient(
              //           colors: controller.buttonDaftar.isTrue &&
              //                   controller.isNoHpValid.value &&
              //                   controller.password.value.length > 8
              //               ? [
              //                   Primary30,
              //                   Primary50,
              //                 ]
              //               : [
              //                   Neutral50,
              //                   Neutral50,
              //                 ],
              //           begin: Alignment.topCenter,
              //           end: Alignment.bottomCenter,
              //         ),
              //         borderRadius: BorderRadius.circular(32.r),
              //       ),
              //       child: ElevatedButton(
              //         style: ElevatedButton.styleFrom(
              //           splashFactory: controller.buttonDaftar.isTrue &&
              //                   controller.isNoHpValid.value
              //               ? InkSplash.splashFactory
              //               : NoSplash.splashFactory,
              //           backgroundColor: Colors.transparent,
              //           shadowColor: Colors.transparent,
              //           textStyle: TextStyle(
              //             fontSize: 16.sp,
              //             fontFamily: 'Poppins',
              //             fontWeight: FontWeight.w600,
              //           ),
              //           shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(32.r),
              //           ),
              //           fixedSize: Size(343.w, 42.w),
              //         ),
              //         onPressed:

              //             // controller.isValid &&

              //             controller.buttonDaftar.isTrue &&
              //                     controller.isNoHpValid.value
              //                 ? () {
              //                     controller.buatAkun();
              //                   }
              //                 : () {},
              //         child: Text(
              //           "Buat Akun".tr,
              //           style: TextStyle(
              //             fontSize: 16.sp,
              //             fontFamily: 'Poppins',
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(height: 24.sp),
              Obx(
                () => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  child: ButtonCustom(
                    gradient: LinearGradient(
                      colors: controller.loadingDaftar.isTrue
                          ? [
                              Primary10.withOpacity(0.8),
                              Primary10,
                            ]
                          : controller.buttonDaftar.isTrue &&
                                  controller.isNoHpValid.value &&
                                  controller.password.value.length > 7
                              ? [
                                  Primary30,
                                  Primary50,
                                ]
                              : [
                                  Neutral50,
                                  Neutral50,
                                ],

                      begin: Alignment.topCenter, // Posisi awal gradient
                      end: Alignment.bottomCenter, // Posisi akhir gradient
                    ),
                    controllerLoading: controller.loadingDaftar.isTrue,
                    onTap:
                        // controller.isValid &&

                        controller.buttonDaftar.isTrue &&
                                controller.isNoHpValid.value &&
                                controller.loadingDaftar.isFalse &&
                                controller.password.value.length > 7
                            ? () {
                                controller.buatAkun();
                              }
                            : () {},
                    splashFactory: controller.buttonDaftar.isTrue &&
                            controller.isNoHpValid.value &&
                            controller.loadingDaftar.isFalse &&
                            controller.password.value.length > 7
                        ? InkSplash.splashFactory
                        : NoSplash.splashFactory,
                    title: 'BuatAkun'.tr,
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
