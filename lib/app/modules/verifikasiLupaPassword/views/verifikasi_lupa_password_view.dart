import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../constant/colors.dart';
import '../../../widgets/Auth/ButtonCustom.dart';
import '../../lupaPassword/controllers/lupa_password_controller.dart';
import '../controllers/verifikasi_lupa_password_controller.dart';

final LupaPasswordController emailFormattedC =
    Get.put(LupaPasswordController());

class VerifikasiLupaPasswordView
    extends GetView<VerifikasiLupaPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Lupa Password?'.tr,
          style: TextStyle(
            color: Color(0xFF333333),
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset(
                "assets/icons/Verifikasi.svg",
                height: 200.w,
                width: 275.w,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 8.w),
            Center(
              child: Text(
                "Masukkan kode Verifikasi".tr,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF333333),
                ),
              ),
            ),
            SizedBox(height: 16.w),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Obx(
                      () => Text(
                        "Kami telah mengirim kode verifikasi melalui email ke "
                                .tr +
                            "${emailFormattedC.formattedEmail.value}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF858585),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 8.w),
            SizedBox(height: 24.w),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 99.5.w),
              child: PinCodeTextField(
                cursorColor: Color(0xFF333333),
                textStyle: TextStyle(
                  color: Color(0xFF216BC9),
                ),
                keyboardType: TextInputType.number,
                controller: controller.verifikasiLupaPassC,
                appContext: context,
                focusNode: controller.verifikasiLupaPassFN,
                autoFocus: true,
                length: 4,
                onChanged: controller.perubahanKodeTerisi,
                boxShadows: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1), // Warna bayangan
                    offset: Offset(-1, -1), // Posisi offset bayangan
                    blurRadius: 0, // Jumlah blur bayangan
                    spreadRadius: 0, // Jarak penyebaran bayangan
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1), // Warna bayangan
                    offset: Offset(1, 1), // Posisi offset bayangan
                    blurRadius: 0, // Jumlah blur bayangan
                    spreadRadius: 0, // Jarak penyebaran bayangan
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1), // Warna bayangan
                    offset: Offset(0, 0), // Posisi offset bayangan
                    blurRadius: 1, // Jumlah blur bayangan
                    spreadRadius: 0, // Jarak penyebaran bayangan
                  ),
                  BoxShadow(
                    color: Color(0xfff0f0f0), // Warna bayangan
                    offset: Offset(4, 4), // Posisi offset bayangan
                    blurRadius: 10, // Jumlah blur bayangan
                    spreadRadius: 0, // Jarak penyebaran bayangan
                  ),
                  BoxShadow(
                    color: Colors.white, // Warna bayangan
                    offset: Offset(6, 6), // Posisi offset bayangan
                    blurRadius: 20, // Jumlah blur bayangan
                    spreadRadius: 0, // Jarak penyebaran bayangan
                  ),
                ],
                scrollPadding: EdgeInsets.all(30),
                pinTheme: PinTheme(
                  fieldHeight: 40.w,
                  fieldWidth: 32.w,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(4),
                  borderWidth: 1,
                  activeColor: Colors.transparent,
                  selectedColor: Colors.transparent,
                  inactiveColor: Colors.transparent,
                ),
              ),
            ),
            SizedBox(height: 24.h),
            StreamBuilder<int>(
              stream: controller.timerController.stream,
              builder: (context, snapshot) {
                if (snapshot.hasData && controller.empatPuluhDetik.value != 0) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Mohon tunggu dalam".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF858585),
                        ),
                      ),
                      Text(
                        " ${snapshot.data} " + "detik".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF858585),
                        ),
                      ),
                      Text(
                        " untuk kirim ulang.".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF858585),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          // isikan fungsi
                          controller.restartTimer();

                          //
                        },
                        borderRadius: BorderRadius.circular(4.r),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.5.sp),
                          child: Text(
                            "Kirim ulang".tr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11.5.w,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF216BC9),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        " kode verifikasi.".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF858585),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
            SizedBox(height: 24.w),
            Obx(
              () => Visibility(
                visible: controller.kodeTerisi.value,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  child: ButtonCustom(
                    gradient: LinearGradient(
                      colors: controller.loadingVerifikasiLupaPassOTP.isTrue
                          ? [
                              Primary10.withOpacity(0.8),
                              Primary10,
                            ]
                          : [
                              Primary30,
                              Primary50,
                            ],
                      begin: Alignment.topCenter, // Posisi awal gradient
                      end: Alignment.bottomCenter, // Posisi akhir gradient
                    ),
                    controllerLoading:
                        controller.loadingVerifikasiLupaPassOTP.isTrue,
                    onTap: controller.kodeTerisi.value &&
                            controller.loadingVerifikasiLupaPassOTP.isFalse
                        ? () {
                            //
                            controller.verifikasiLupaPass();
                          }
                        : () {},
                    splashFactory: controller.kodeTerisi.value &&
                            controller.loadingVerifikasiLupaPassOTP.isFalse
                        ? InkSplash.splashFactory
                        : NoSplash.splashFactory,
                    title: 'Verifikasi'.tr,
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
