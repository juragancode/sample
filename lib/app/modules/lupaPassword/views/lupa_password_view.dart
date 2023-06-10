import 'package:flutter/material.dart';
import 'package:g_a_s_app_rekadigi/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controllers/lupa_password_controller.dart';

class LupaPasswordView extends GetView<LupaPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              margin: EdgeInsets.symmetric(horizontal: 16.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.sp),
                color: Color(0xFFF0F0F0),
              ),
              child: TextField(
                focusNode: controller.lupaPassFN,
                controller: controller.lupaPassC,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                // style: TextStyle(
                //   decoration: TextDecoration.none,
                // ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Ex: janedoe@email.com',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 18),
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
            // SizedBox(height: 4),
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
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    fixedSize: Size(343.w, 42.w),
                  ),
                  onPressed: () => Get.toNamed(Routes.VERIFIKASI_LUPA_PASSWORD),
                  // onPressed: () {},
                  child: Text(
                    "Selanjutnya",
                    style: TextStyle(
                      fontSize: 16,
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
