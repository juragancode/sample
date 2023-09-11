import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../model/FilterTransaksi_model.dart';
import '../modules/home/controllers/home_controller.dart';
import 'FooterModalBottomSheet.dart';
import 'HeaderModalBottomSheet.dart';

Future<dynamic> PesananDibatalkan_ModalBottomSheet(BuildContext context) {
  final FilterTransaksiList filterTransaksiList = FilterTransaksiList();

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
          return GetBuilder<HomeController>(
            builder: (controller) {
              return Flexible(
                child: Container(
                  // height: 8.sp + 4.sp + 16.sp + 16.sp + 24.w,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          "Pilih Alasan",
                          style: TextStyle(
                            fontSize: 15.5.w,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                        SizedBox(height: 16.sp),
                        Row(
                          children: [
                            Text(
                              "Ingin memesan produk lain dari toko ini",
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
                ),
              );
            },
          );
        },
      );
    },
  );
}
