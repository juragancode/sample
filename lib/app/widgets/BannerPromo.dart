import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';
import 'BoxShadow.dart';

class BannerPromo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow_01(),
        ],
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/icons/Banner-Buat-Promo.svg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.sp,
              vertical: 10.sp,
            ),
            child: Row(
              children: [
                Container(
                  // color: Colors.amber,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.64.w,
                    ),
                    child: Container(
                      // color: Colors.amber,
                      height: 39.71.w,
                      width: 39.71.w,
                      child: SvgPicture.asset(
                        'assets/icons/icon-Buat-Promo.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 9.w),
                Expanded(
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        width: 225.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Buat Promo",
                              style: TextStyle(
                                fontSize: 13.5.w,
                                fontWeight: FontWeight.w600,
                                color: H333333,
                              ),
                            ),
                            SizedBox(height: 4.sp),
                            Text(
                              "Promosikan produkmu dengan diskon menarik & kupon belanja.",
                              style: TextStyle(
                                fontSize: 10.w,
                                fontWeight: FontWeight.w400,
                                color: Neutral90,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          CupertinoIcons.chevron_forward,
                          color: Primary50,
                          size: 20.w,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
