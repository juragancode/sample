import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';

Future<dynamic> PesananDibatalkan_ModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    // isScrollControlled: true,
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(24.0.r),
      ),
    ),
    backgroundColor: BackgroundColor,
    builder: (BuildContext context) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            width: Get.width,
            decoration: BoxDecoration(
              // color: Colors.amber,
              color: BackgroundColor,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(24.0.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.sp),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 8.sp),
                  //
                  Center(
                    child: Container(
                      width: 40.w,
                      height: 4.sp,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(32.r),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.sp),
                  Text(
                    "Batalkan pesanan ini?",
                    style: TextStyle(
                      fontSize: 15.5.w,
                      fontWeight: FontWeight.w600,
                      color: H333333,
                    ),
                  ),
                  SizedBox(height: 7.w),

                  Text(
                    "Pembatalan dapat diproses setelah persetujuan penjual. Pesanan yang dibatalkan tidak akan diproses.",
                    style: TextStyle(
                      fontSize: 11.5.w,
                      fontWeight: FontWeight.w400,
                      color: Neutral90,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 24.sp),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(32.r),
                          splashColor: Primary50.withOpacity(0.1),
                          highlightColor: Primary50.withOpacity(0.2),
                          onTap: () {
                            print("Kembali");

                            Get.back();
                          },
                          child: Ink(
                            width: (Get.width - 40.sp) / 2,
                            height: 40.w,
                            decoration: BoxDecoration(
                              color: BackgroundColor,
                              borderRadius: BorderRadius.circular(32.r),
                              border: Border.all(
                                width: 1,
                                color: Primary30,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Kembali",
                                style: TextStyle(
                                  fontSize: 15.5.w,
                                  fontWeight: FontWeight.w600,
                                  color: Primary50,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(32.r),
                          onTap: () {
                            print("Batalkan Pesanan");
                            Get.back();
                          },
                          child: Ink(
                            width: (Get.width - 40.sp) / 2,
                            height: 40.w,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Primary30,
                                  Primary50,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(32.r),
                            ),
                            child: Center(
                              child: Text(
                                "Ya, Batalkan",
                                style: TextStyle(
                                  fontSize: 15.5.w,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 22.sp),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
