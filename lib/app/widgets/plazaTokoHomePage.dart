import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/colors.dart';
import 'BoxShadow.dart';

class PlazaTokoHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              // width: 167.w,
              // height: 110.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow_01(),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 31.w,
                      width: 31.w,
                      child: SvgPicture.asset(
                        'assets/icons/icon-Bag-Red.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8.sp),
                    Text(
                      "Plaza",
                      style: TextStyle(
                        fontSize: 15.5.w,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF333333),
                      ),
                    ),
                    SizedBox(height: 2.sp),
                    Text(
                      "Cari berbagai kebutuhan di plaza sekitarmu.",
                      style: TextStyle(
                        fontSize: 10.w,
                        fontWeight: FontWeight.w400,
                        color: Neutral90,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Container(
              // width: 167.w,
              // height: 110.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow_01(),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 31.w,
                      width: 31.w,
                      child: SvgPicture.asset(
                        'assets/icons/icon-Shop-Blue.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8.sp),
                    Text(
                      "Toko",
                      style: TextStyle(
                        fontSize: 15.5.w,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF333333),
                      ),
                    ),
                    SizedBox(height: 2.sp),
                    Text(
                      "Belanja murah di toko-toko terdekat.",
                      style: TextStyle(
                        fontSize: 10.w,
                        fontWeight: FontWeight.w400,
                        color: Neutral90,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
