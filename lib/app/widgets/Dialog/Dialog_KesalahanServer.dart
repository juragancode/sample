import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';

class Dialog_KesalahanServer extends StatelessWidget {
  const Dialog_KesalahanServer({
    super.key,
    required this.onReload,
  });
  final void Function() onReload;

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
              'assets/icons/kesalahan-server.svg', // Gantilah dengan path ke file SVG Anda
              width: 149.62.w, // Sesuaikan ukuran gambar
            ),
            SizedBox(height: 24.sp),
            Text(
              "Ups! terjadi kesalahan server",
              style: TextStyle(
                fontSize: 13.5.w,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: H333333,
              ),
            ),
            SizedBox(height: 8.sp),
            Text(
              "Mohon maaf, kami akan segera memperbaikinya. Mohon tunggu hingga proses maintanance berhasil.",
              style: TextStyle(
                fontSize: 11.5.w,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Neutral90,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.sp),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(32.r),
                      onTap: () {
                        //
                        print("Kembali");
                        Get.back();
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                          color: BackgroundColor,
                          borderRadius: BorderRadius.circular(32.r),
                          border: Border.all(
                            width: 1,
                            color: Primary30,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 9.5.w),
                          child: Center(
                            child: Text(
                              "Kembali",
                              style: TextStyle(
                                fontSize: 11.5.w,
                                fontWeight: FontWeight.w600,
                                color: Primary50,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(32.r),
                      onTap: () {
                        //
                        print("Muat Ulang");
                        onReload();
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
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 9.5.w),
                          child: Center(
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
