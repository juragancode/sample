import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/colors.dart';
import 'BoxShadow.dart';

class FiturToko extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Container(
                  width: 167.w,
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
                          height: 32.sp,
                          width: 32.sp,
                          child: SvgPicture.asset(
                            'assets/icons/icon-Mesin-Kasir-Blue.svg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8.sp),
                        Text(
                          "Mesin Kasir",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                        SizedBox(height: 2.sp),
                        Text(
                          "Hitung penjualanmu dengan mesin kasir otomatis.",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: Neutral90,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  width: 167.w,
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
                          height: 32.sp,
                          width: 32.sp,
                          child: SvgPicture.asset(
                            'assets/icons/icon-Kelola Product-Yellow.svg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8.sp),
                        Text(
                          "Kelola Produk",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                        SizedBox(height: 2.sp),
                        Text(
                          "Kelola stok, varian, dan kategori produkmu",
                          style: TextStyle(
                            fontSize: 10.sp,
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
          SizedBox(height: 8.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Container(
                  width: 167.w,
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
                                fontSize: 12.sp,
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
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  width: 167.w,
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
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: H333333,
                          ),
                        ),
                        SizedBox(height: 4.sp),
                        Text(
                          "15",
                          style: TextStyle(
                            fontSize: 16.sp,
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
