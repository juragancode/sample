import 'package:flutter/material.dart';
import 'package:g_a_s_app_rekadigi/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controllers/lupa_password_controller.dart';

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
              color: Color(0xFFFFCA08),
            ),
          ),
          title: Text(
            'Lupa Password?',
            style: TextStyle(
              color: Color(0xFF333333),
              fontSize: 16,
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
                  SizedBox(width: 18),
                  Text(
                    "Atur Ulang Password",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 8),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  SizedBox(width: 18),
                  Flexible(
                    child: Wrap(
                      children: [
                        Text(
                          "Silakan masukkan e-mail kamu yang terdaftar. Selanjutnya, kami akan mengirimkan kode verifikasi untuk mengatur ulang password.",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF858585),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 34),
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
                child: TextField(
                  onChanged: (value) {
                    controller.email.value = value;
                    controller.checkEmailValidity();
                  },
                  focusNode: controller.emailLupaPassFN,
                  controller: controller.emailLupaPassC,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Ex: janedoe@email.com',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.w),
                    hintStyle: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA0A0A0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.w),
              Center(
                child: Obx(
                  () => DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: controller.isValid
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
                    child: Obx(
                      () => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          surfaceTintColor: Colors.transparent,
                          splashFactory: controller.isValid
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
                        // onPressed: () =>
                        // Get.toNamed(Routes.VERIFIKASI_LUPA_PASSWORD),
                        onPressed: controller.isValid
                            ? () {
                                controller.formatEmail();
                                Get.toNamed(Routes.VERIFIKASI_LUPA_PASSWORD);
                              }
                            : () {},
                        child: Text(
                          "Selanjutnya",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
