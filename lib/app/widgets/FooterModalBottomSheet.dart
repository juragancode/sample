import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';

class FooterModalBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        color: BackgroundColor,
        height: 61.w,
        width: Get.width,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10.sp,
            horizontal: 16.sp,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(32.r),
              onTap: () {
                //
                print("Tampilkan Hasil");
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
                  child: Text(
                    "Tampilkan Hasil",
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
    );
  }
}
