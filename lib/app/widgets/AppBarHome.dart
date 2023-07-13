import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/colors.dart';
import '../modules/home/controllers/home_controller.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 36.sp,
              width: 223.w,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(32.r),
              ),
              child: TextField(
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF333333),
                  decorationThickness: 0,
                ),
                focusNode: controller.searchFN,
                controller: controller.searchC,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                autocorrect: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Cari di aplikasi GAS',
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: Color(0xFFFFCA08),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      // vertical: 2,
                      ),
                  suffix: SizedBox(width: 20.sp),
                  hintStyle: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Neutral90,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                //
                print("Pesan");
              },
              child: Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Container(
                  // height: 36.sp,
                  // width: 36.sp,
                  child: SvgPicture.asset(
                    'assets/icons/Button-Message.svg',
                    fit: BoxFit.contain,
                    width: 36.sp,
                    height: 36.sp,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                //
                print("Notifikasi");
              },
              child: Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Container(
                  // height: 36.sp,
                  // width: 36.sp,
                  child: SvgPicture.asset(
                    'assets/icons/Button-Notif.svg',
                    fit: BoxFit.contain,
                    height: 36.sp,
                    width: 36.sp,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                //
                print("Keranjang");
              },
              child: Padding(
                padding: EdgeInsets.only(
                  // right: 16.sp,
                  left: 4.w,
                ),
                child: Container(
                  // height: 36.sp,
                  // width: 36.sp,
                  child: SvgPicture.asset(
                    'assets/icons/Button-Cart.svg',
                    fit: BoxFit.contain,
                    height: 36.sp,
                    width: 36.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
