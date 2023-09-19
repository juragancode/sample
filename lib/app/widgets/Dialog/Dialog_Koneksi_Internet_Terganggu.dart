import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';

class Dialog_Koneksi_Internet_Terganggu extends StatelessWidget {
  const Dialog_Koneksi_Internet_Terganggu({
    super.key,
    // required this.muatUlang,
  });
  // final void Function() muatUlang;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0.w),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/icons/koneksi-internet-terganggu.svg', // Gantilah dengan path ke file SVG Anda
              width: 149.62.w, // Sesuaikan ukuran gambar
            ),
            SizedBox(height: 24.sp),
            Text(
              "Ups! Sepertinya koneksimu terganggu",
              style: TextStyle(
                fontSize: 13.5.w,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: H333333,
              ),
            ),
            SizedBox(height: 8.sp),
            Text(
              "Coba periksa koneksi internetmu, kemudian muat ulang halaman",
              style: TextStyle(
                fontSize: 11.5.w,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Neutral90,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.sp),
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(32.r),
                onTap: () {
                  //
                  print("Muat Ulang OTP");
                  Get.back();
                },
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF4D89D4),
                        Color(0xFF216BC9),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(32.r),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 9.5.w),
                      child: Text(
                        "Muat Ulang",
                        style: TextStyle(
                          fontSize: 11.5.w,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
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
    );
  }
}
