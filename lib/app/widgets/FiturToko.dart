import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/colors.dart';
import 'Decoration/BoxShadow.dart';

class FiturToko extends StatelessWidget {
  final String svg;
  final String title;
  final String deskripsi;

  FiturToko({
    required this.svg,
    required this.title,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: Column(
        children: [
          Row(
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
                          decoration: BoxDecoration(
                            color: EBEBEB,
                            borderRadius: BorderRadius.circular(
                              4.sp,
                            ),
                          ),
                          child: Center(
                            child: Container(
                              height: 18.w,
                              width: 18.w,
                              child: SvgPicture.asset(
                                'assets/icons/ContentIcons/Blue-Mesin-Kasir.svg',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8.sp),
                        Text(
                          "Mesin Kasir",
                          style: TextStyle(
                            fontSize: 15.5.w,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                        SizedBox(height: 2.sp),
                        Text(
                          "Hitung penjualanmu dengan mesin kasir otomatis.",
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
                              height: 21.w,
                              width: 21.w,
                              child: SvgPicture.asset(
                                svg,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8.sp),
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 15.5.w,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                        SizedBox(height: 2.sp),
                        Text(
                          deskripsi,
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
          //
          SizedBox(height: 8.w),
          Row(
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
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.sp,
                      vertical: 10.sp,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pesanan Baru",
                              style: TextStyle(
                                fontSize: 11.5.w,
                                fontWeight: FontWeight.w400,
                                color: H333333,
                              ),
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Error50,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4.sp),
                        Text(
                          "3",
                          style: TextStyle(
                            fontSize: 15.5.w,
                            fontWeight: FontWeight.w600,
                            color: H333333,
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
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.sp,
                      vertical: 10.sp,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pesanan Selesai",
                          style: TextStyle(
                            fontSize: 11.5.w,
                            fontWeight: FontWeight.w400,
                            color: H333333,
                          ),
                        ),
                        SizedBox(height: 4.sp),
                        Text(
                          "15",
                          style: TextStyle(
                            fontSize: 15.5.w,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          //
        ],
      ),
    );
  }
}
