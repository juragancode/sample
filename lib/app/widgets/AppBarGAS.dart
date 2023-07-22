import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../modules/home/controllers/home_controller.dart';

class AppBarGAS extends GetView<HomeController> {
  final BorderStyle borderStyle;
  AppBarGAS({required this.borderStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 35.w,
                decoration: AppBar_BoxDecoration(),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.sp,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.search,
                        color: Color(0xFFFFCA08),
                      ),
                      SizedBox(width: 8.sp),
                      Expanded(
                        // bug apabila text yang diisi panjangnya melebihi yang disediakan textfield maka akn terpotong (kayaknya content padding)
                        child: TextField(
                          style: TextStyle(
                            fontSize: 11.5.w,
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
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 11.w),
                            hintStyle: TextStyle(
                              fontSize: 11.5.w,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: Neutral90,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 8.sp),
            GestureDetector(
              onTap: () {
                print("Pesan");
              },
              child: Container(
                decoration: AppBar_BoxDecoration(),
                child: SvgPicture.asset(
                  'assets/icons/Button-Message.svg',
                  fit: BoxFit.contain,
                  width: 35.w,
                  height: 35.w,
                ),
              ),
            ),
            SizedBox(width: 4.sp),
            GestureDetector(
              onTap: () {
                print("Notifikasi");
              },
              child: Container(
                decoration: AppBar_BoxDecoration(),
                child: SvgPicture.asset(
                  'assets/icons/Button-Notif.svg',
                  fit: BoxFit.contain,
                  height: 35.w,
                  width: 35.w,
                ),
              ),
            ),
            SizedBox(width: 4.sp),
            GestureDetector(
              onTap: () {
                print("Keranjang");
              },
              child: Container(
                decoration: AppBar_BoxDecoration(),
                child: SvgPicture.asset(
                  'assets/icons/Button-Cart.svg',
                  fit: BoxFit.contain,
                  height: 35.w,
                  width: 35.w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration AppBar_BoxDecoration() {
    return BoxDecoration(
      color: Color(0xFFFFFFFF),
      borderRadius: BorderRadius.circular(32.r),
      border: Border.all(
        strokeAlign: BorderSide.strokeAlignInside,
        style: borderStyle,
        width: 1.sp,
        color: Neutral10,
      ),
    );
  }
}
