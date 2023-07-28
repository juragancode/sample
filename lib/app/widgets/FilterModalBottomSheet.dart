import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import 'FilterKategori.dart';
import '../modules/home/controllers/home_controller.dart';
import 'FilterUrutkan.dart';
import 'FooterModalBottomSheet.dart';
import 'HeaderModalBottomSheet.dart';
import 'FilterLokasi.dart';
import 'FilterPengiriman.dart';
import 'FilterKondisi.dart';
import 'FilterLainnya.dart';

Future<dynamic> FilterModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
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
              return Container(
                height: Get.height - (57.sp + 140.w),
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 66.sp),
                            FilterUrutkan(),
                            SizedBox(height: 24.sp),
                            FilterKategori(),
                            SizedBox(height: 24.sp),
                            FilterLokasi(),
                            SizedBox(height: 24.sp),
                            FilterPengiriman(),
                            SizedBox(height: 24.sp),
                            FilterKondisi(),
                            SizedBox(height: 24.sp),
                            FilterLainnya(),
                            SizedBox(height: 75.sp),
                            //
                          ],
                        ),
                      ),
                    ),
                    HeaderModalBottomSheet(),
                    FooterModalBottomSheet(),
                  ],
                ),
              );
            },
          );
        },
      );
    },
  );
}
