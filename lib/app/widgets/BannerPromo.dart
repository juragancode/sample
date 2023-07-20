import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/colors.dart';

class BannerPromo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Color(0xFFFFFFFF),
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
                  // color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 3.81,
                      horizontal: 10,
                    ),
                    child: Container(
                      // color: Colors.amber,
                      height: 39.71.sp,
                      width: 39.71.sp,
                      child: SvgPicture.asset(
                        'assets/icons/icon-Buat-Promo.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                // SizedBox(width: 12.64.sp),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 225.sp,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Buat Promo",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: H333333,
                              ),
                            ),
                            SizedBox(height: 4.sp),
                            Text(
                              "Promosikan produkmu dengan diskon menarik & kupon belanja.",
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: Neutral90,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        CupertinoIcons.chevron_forward,
                        color: Primary50,
                        size: 20.sp,
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
