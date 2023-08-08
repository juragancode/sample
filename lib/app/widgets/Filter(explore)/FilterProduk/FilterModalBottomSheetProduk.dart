import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../modules/home/controllers/home_controller.dart';
import 'FilterKondisiProduk.dart';
import 'FilterLainnyaProduk.dart';
import 'FilterLokasiProduk.dart';
import 'FilterPengirimanProduk.dart';
import 'FilterUrutkanProduk.dart';
import 'FilterKategoriProduk.dart';
import '../../FooterModalBottomSheet.dart';
import '../../HeaderModalBottomSheet.dart';

Future<dynamic> FilterModalBottomSheetProduk(BuildContext context) {
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
                          SizedBox(height: 66.sp),
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
                          SizedBox(height: 75.sp),
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
