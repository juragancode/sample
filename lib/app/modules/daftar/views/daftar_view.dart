import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/daftar_controller.dart';

class DaftarView extends GetView<DaftarController> {
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
              size: 31,
              color: Color(0xFFFFCA08),
            ),
          ),
        ),
        title: Text(
          'Daftar',
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
            SizedBox(height: 20.h),
            Row(
              children: [
                SizedBox(width: 34.sp),
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
            SizedBox(height: 4.h),
            Container(
              height: 40.h,
              margin: EdgeInsets.symmetric(horizontal: 16.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.sp),
                color: Color(0xFFF0F0F0),
              ),
              child: TextField(
                // focusNode: controller.lupaPassFN,
                // controller: controller.lupaPassC,
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
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                  hintStyle: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A0A0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
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
                    fixedSize: Size(343.w, 42.h),
                  ),
                  // onPressed: () => Get.toNamed(Routes.VERIFIKASI_LUPA_PASSWORD),
                  onPressed: () {},
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
