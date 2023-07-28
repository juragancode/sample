import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';

class HeaderModalBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 8.sp + 4.sp + 16.sp + 16.sp + 24.w,
        width: Get.width,
        decoration: BoxDecoration(
          // color: Colors.amber,
          color: BackgroundColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24.0.r),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.sp),
            //
            Center(
              child: Container(
                width: 40.w,
                height: 4.sp,
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(32.r),
                ),
              ),
            ),
            SizedBox(height: 16.sp),
            Padding(
              padding: EdgeInsets.only(left: 16.sp),
              child: Text(
                "Filter",
                style: TextStyle(
                  fontSize: 15.5.w,
                  fontWeight: FontWeight.w600,
                  color: H333333,
                ),
              ),
            ),
            SizedBox(height: 16.sp),
          ],
        ),
      ),
    );
  }
}
