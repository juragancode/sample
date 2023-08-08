import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:text_divider/text_divider.dart';

import '../../../constant/colors.dart';
import '../../../widgets/Auth/ButtonCustom.dart';
import '../../../widgets/Auth/TextfieldEmail.dart';
import '../../../widgets/Auth/iconGAS.dart';
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
              color: Secondary50,
            ),
          ),
          title: Text(
            'Daftar'.tr,
            style: TextStyle(
              color: H333333,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          // centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconGAS(),
                  SizedBox(height: 12.w),
                  Obx(
                    () => TextfieldEmail(
                      controller: controller,
                      title: "Email",
                      focusNode: controller.emailDaftarFN,
                      textController: controller.emailDaftarC,
                      textInputAction: TextInputAction.done,
                      suffixIcon:
                          // SizedBox(),
                          controller.isValid
                              ? Padding(
                                  padding: EdgeInsets.only(right: 21.42.w),
                                  child: Icon(
                                    CupertinoIcons.checkmark_alt_circle_fill,
                                    // Icons.check_circle,
                                    color: Success50,
                                    size: 20.w,
                                  ),
                                )
                              : SizedBox(width: 0),
                    ),
                  ),

                  SizedBox(height: 5.h),
                  Obx(
                    () => Visibility(
                      visible: !controller.isValid &&
                          controller.isTextFieldTapped.value,
                      child: Row(
                        children: [
                          Icon(
                            Icons.info,
                            color: Error50,
                            size: 20.sp,
                          ),
                          SizedBox(width: 5.sp),
                          Text(
                            "Format email tidak valid.".tr,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: Error50,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.w),
                  Obx(
                    () => ButtonCustom(
                      onTap: controller.isValid &&
                              controller.syaratKebijakanCheck.isTrue
                          ? () {
                              controller.registerButton();

                              // controller.formatEmail();
                              // Get.toNamed(Routes.VERIFIKASI_DAFTAR);
                              // print(controller.emailDaftarC);
                            }
                          : () {},
                      splashFactory: controller.isValid &&
                              controller.syaratKebijakanCheck.isTrue
                          ? InkSplash.splashFactory
                          : NoSplash.splashFactory,
                      title: "Daftar".tr,
                    ),
                  ),

                  // SizedBox(height: 8).sp,
                  SizedBox(height: 16.w),

                  TextDivider(
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
                  SizedBox(height: 16.w),

                  ButtonGoogleAuth(),
                  // SizedBox(height: 16.w),
                  GestureDetector(
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
                            child: Container(
                              color: Colors.transparent,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 0.sp,
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
                                                  ? Secondary50
                                                  : Neutral50, // Warna garis tepi
                                              width: 2.0.sp, // Lebar garis tepi
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
                                                  CupertinoIcons.checkmark_alt,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
