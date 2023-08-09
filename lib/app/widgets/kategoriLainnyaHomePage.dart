import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/colors.dart';
import 'Decoration/BoxShadow.dart';

class KategoriLainnyaHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.sp),
          child: Row(
            children: [
              Text(
                "Kategori Lainnya",
                style: TextStyle(
                  fontSize: 15.5.w,
                  fontWeight: FontWeight.w600,
                  color: H333333,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.sp),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow_01(),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(14.w),
                      child: SvgPicture.asset(
                        height: 46.w,
                        width: 46.w,
                        'assets/icons/Category-Icons-Fashion2.svg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.sp),
                  Text(
                    "Fashion",
                    style: TextStyle(
                      fontSize: 11.5.w,
                      fontWeight: FontWeight.w400,
                      color: H333333,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow_01(),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(14.w),
                      child: SvgPicture.asset(
                        height: 46.w,
                        width: 46.w,
                        'assets/icons/Category-Icons-Food2.svg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.sp),
                  Text(
                    "GAS Food",
                    style: TextStyle(
                      fontSize: 11.5.w,
                      fontWeight: FontWeight.w400,
                      color: H333333,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow_01(),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(14.w),
                      child: SvgPicture.asset(
                        height: 46.w,
                        width: 46.w,
                        'assets/icons/Category-Icons-Otomotif2.svg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.sp),
                  Text(
                    "Otomotif",
                    style: TextStyle(
                      fontSize: 11.5.w,
                      fontWeight: FontWeight.w400,
                      color: H333333,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      // color: Color.fromARGB(255, 255, 113, 113),
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow_01(),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(14.w),
                      child: SvgPicture.asset(
                        height: 46.w,
                        width: 46.w,
                        'assets/icons/Category-Icons-Lainnya2.svg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.sp),
                  Text(
                    "Lain-lain",
                    style: TextStyle(
                      fontSize: 11.5.w,
                      fontWeight: FontWeight.w400,
                      color: H333333,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
