import 'package:flutter/material.dart';
import 'package:g_a_s_app_rekadigi/app/routes/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../controllers/verifikasi_daftar_controller.dart';

class VerifikasiDaftarView extends GetView<VerifikasiDaftarController> {
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
              size: 31.sp,
              color: Color(0xFFFFCA08),
            ),
          ),
        ),
        title: Text(
          'Daftar',
          style: TextStyle(
            color: Color(0xFF333333),
            fontSize: 16,
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
              child: Image.asset(
                "assets/icons/Lupa-Password.png",
                height: 200.h,
                width: 275.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8.h),
            Center(
              child: Text(
                "Masukkan kode Verifikasi",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF333333),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Flexible(
                  child: Wrap(
                    children: [
                      Text(
                        "Kami telah mengirim kode verifikasi melalui email ke n***********@g****.com.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF858585),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8.w),
              ],
            ),
            SizedBox(height: 24.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: PinCodeTextField(
                cursorColor: Color(0xFF333333),
                textStyle: TextStyle(
                  color: Color(0xFF216BC9),
                ),
                keyboardType: TextInputType.number,
                // controller: controller.verifikasiLupaPassC,
                appContext: context,
                length: 4,
                onChanged: (value) {},
                boxShadows: [
                  // BoxShadow(
                  // color: Color.fromRGBO(0, 0, 0, 0.1), // Warna bayangan
                  // offset: Offset(0, 0), // Posisi offset bayangan
                  // blurRadius: 4, // Jumlah blur bayangan
                  // spreadRadius: 0, // Jarak penyebaran bayangan
                  // ),
                ],
                pinTheme: PinTheme(
                  fieldHeight: 40.h,
                  fieldWidth: 32.w,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(4),
                  borderWidth: 1,

                  activeColor: Color.fromARGB(255, 199, 199, 199),
                  selectedColor: Color(0xFF858585),
                  inactiveColor: Color.fromARGB(255, 199, 199, 199),

                  // activeColor: Colors.transparent,
                  // selectedColor: Colors.transparent,
                  // inactiveColor: Colors.transparent,
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Mohon tunggu dalam",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF858585),
                  ),
                ),
                Text(
                  " 39 detik",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF858585),
                  ),
                ),
                Text(
                  " untuk kirim ulang.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF858585),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
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
                  borderRadius: BorderRadius.circular(32),
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
                    fixedSize: Size(343.w, 42.h),
                  ),
                  onPressed: () => Get.toNamed(Routes.DAFTAR),
                  child: Text(
                    "Verifikasi",
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
