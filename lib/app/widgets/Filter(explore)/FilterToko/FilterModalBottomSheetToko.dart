import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../modules/home/controllers/home_controller.dart';
import '../FilterToko/FilterKondisiToko.dart';
import '../FilterToko/FilterLainnyaToko.dart';
import '../FilterToko/FilterLokasiToko.dart';
import '../FilterToko/FilterPengirimanToko.dart';
import '../FilterToko/FilterUrutkanToko.dart';
import '../FilterToko/FilterKategoriToko.dart';
import '../../FooterModalBottomSheet.dart';
import '../../HeaderModalBottomSheet.dart';

Future<dynamic> FilterModalBottomSheetToko(BuildContext context) {
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8.sp + 4.sp + 16.sp + 16.sp + 24.w,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.sp),
                            child: FilterUrutkan(),
                          ),
                          SizedBox(height: 24.sp),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.sp),
                            child: FilterKategori(),
                          ),
                          SizedBox(height: 24.sp),
                          Padding(
                            padding: EdgeInsets.only(left: 16.sp, right: 10.sp),
                            child: FilterLokasi(),
                          ),
                          SizedBox(height: 24.sp),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.sp),
                            child: FilterPengiriman(),
                          ),
                          SizedBox(height: 24.sp),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.sp),
                            child: FilterKondisi(),
                          ),
                          SizedBox(height: 24.sp),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.sp),
                            child: FilterLainnya(),
                          ),
                          SizedBox(height: 35.sp + 40.w),
                          //
                        ],
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
