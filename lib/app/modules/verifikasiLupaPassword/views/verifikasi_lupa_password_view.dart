import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../controllers/verifikasi_lupa_password_controller.dart';

class VerifikasiLupaPasswordView
    extends GetView<VerifikasiLupaPasswordController> {
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
          'Lupa Password?',
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
            Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/Verification-Code.png'),
                  fit: BoxFit.cover,
                ),
                // color: Color.fromARGB(255, 219, 218, 218),
              ),
              child: TextField(
                // focusNode: controller.emailLoginFN,
                controller: controller.verifikasiLupaPassC,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                  hintStyle: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A0A0),
                  ),
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
                  // onPressed: () => Get.toNamed(Routes.VERIFIKASI_LUPA_PASSWORD),
                  onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
