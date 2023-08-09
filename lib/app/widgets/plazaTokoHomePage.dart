import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/colors.dart';
import 'Decoration/BoxShadow.dart';

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
                      decoration: BoxDecoration(
                        color: EBEBEB,
                        borderRadius: BorderRadius.circular(
                          4.sp,
                        ),
                      ),
                      child: Center(
                        child: Container(
                          height: 21.78.w,
                          width: 21.78.w,
                          child: SvgPicture.asset(
                            'assets/icons/ContentIcons/Red-Bag-Plaza.svg',
                            fit: BoxFit.contain,
                          ),
                        ),
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
                      decoration: BoxDecoration(
                        color: EBEBEB,
                        borderRadius: BorderRadius.circular(
                          4.sp,
                        ),
                      ),
                      child: Center(
                        child: Container(
                          height: 21.37.w,
                          width: 21.37.w,
                          child: SvgPicture.asset(
                            'assets/icons/ContentIcons/Blue-Shop-Toko.svg',
                            fit: BoxFit.contain,
                          ),
                        ),
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
