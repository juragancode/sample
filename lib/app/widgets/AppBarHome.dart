import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/colors.dart';
import '../modules/home/controllers/home_controller.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

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
                height: 36.sp,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(32.r),
                ),
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
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 12.sp),
                            hintStyle: TextStyle(
                              fontSize: 12.sp,
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
                child: SvgPicture.asset(
                  'assets/icons/Button-Message.svg',
                  fit: BoxFit.contain,
                  width: 36.sp,
                  height: 36.sp,
                ),
              ),
            ),
            SizedBox(width: 4.sp),
            GestureDetector(
              onTap: () {
                print("Notifikasi");
              },
              child: Container(
                child: SvgPicture.asset(
                  'assets/icons/Button-Notif.svg',
                  fit: BoxFit.contain,
                  height: 36.sp,
                  width: 36.sp,
                ),
              ),
            ),
            SizedBox(width: 4.sp),
            GestureDetector(
              onTap: () {
                print("Keranjang");
              },
              child: Container(
                child: SvgPicture.asset(
                  'assets/icons/Button-Cart.svg',
                  fit: BoxFit.contain,
                  height: 36.sp,
                  width: 36.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
