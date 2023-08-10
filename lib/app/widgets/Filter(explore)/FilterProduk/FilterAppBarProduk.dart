import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../model/filter_lokasi_model.dart';
import '../../../model/filter_urutkan_model.dart';
import '../../../modules/home/controllers/home_controller.dart';
import 'FilterModalBottomSheetProduk.dart';

class FilterAppBarProduk extends GetView<ProdukController> {
  final FilterLokasiList filterLokasiList = FilterLokasiList();
  final FilterUrutkanList filterUrutkanList = FilterUrutkanList();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // SizedBox(width: 18.sp),
        GestureDetector(
          onTap: () {
            FilterModalBottomSheetProduk(context);
          },
          child: Container(
            // color: Colors.amber,
            child: Padding(
              padding: EdgeInsets.only(
                top: 12.sp,
                bottom: 12.sp,
                left: 18.sp,
                right: 8.sp,
              ),
              child: Container(
                width: 28.0.w,
                height: 28.0.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0.sp),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF4D89D4),
                      Color(0xFF216BC9),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 1.w),
                  child: Icon(
                    CupertinoIcons.line_horizontal_3_decrease,
                    color: Colors.white,
                    size: 17.w,
                  ),
                ),
              ),
            ),
          ),
        ),
        // SizedBox(width: 8.sp),
        Container(
          height: 35.w,
          width: Get.width - 28.w - 18.sp - 8.sp,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 4.w);
            },
            padding: EdgeInsets.only(right: 12.sp),
            scrollDirection: Axis.horizontal,
            itemCount: 4, // Set itemCount to 4 for displaying 4 items
            itemBuilder: (context, index) {
              if (index == 0) {
                // Item 1: filterUrutkanList.filter_urutkans[1]
                final filter = filterUrutkanList.filter_urutkans[1];
                return Obx(
                  () => GestureDetector(
                    onTap: () {
                      controller.filterUrutkanState[1] =
                          !controller.filterUrutkanState[1];
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.slowMiddle,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.sp,
                        vertical: 8.sp,
                      ),
                      decoration: BoxDecoration(
                        color: controller.filterUrutkanState[1]
                            ? Color(0xFFD0E4FF)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(32.r),
                        border: controller.filterUrutkanState[1]
                            ? Border.all(color: Primary50, width: 0.5)
                            : Border.all(color: Neutral90, width: 0.5),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            if (filter.icon != null) ...[
                              Icon(filter.icon,
                                  size: 15.5.w, color: Secondary50),
                              SizedBox(width: 4.sp),
                            ],
                            Text(
                              filter.title!,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: controller.filterUrutkanState[1]
                                    ? Primary50
                                    : Neutral90,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              } else if (index == 1) {
                final filter = filterLokasiList.filter_lokasis[0];
                return Obx(
                  () => GestureDetector(
                    onTap: () {
                      controller.filterLokasiState[0] =
                          !controller.filterLokasiState[0];
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.slowMiddle,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.sp,
                        vertical: 8.sp,
                      ),
                      decoration: BoxDecoration(
                        color: controller.filterLokasiState[0]
                            ? Color(0xFFD0E4FF)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(32.r),
                        border: controller.filterLokasiState[0]
                            ? Border.all(color: Primary50, width: 0.5)
                            : Border.all(color: Neutral90, width: 0.5),
                      ),
                      child: Center(
                        child: Text(
                          filter.title!,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: controller.filterLokasiState[0]
                                ? Primary50
                                : Neutral90,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              } else if (index == 2) {
                final filter = filterUrutkanList.filter_urutkans[0];
                return Obx(
                  () => GestureDetector(
                    onTap: () {
                      controller.filterUrutkanState[0] =
                          !controller.filterUrutkanState[0];
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.slowMiddle,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.sp,
                        vertical: 8.sp,
                      ),
                      decoration: BoxDecoration(
                        color: controller.filterUrutkanState[0]
                            ? Color(0xFFD0E4FF)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(32.r),
                        border: controller.filterUrutkanState[0]
                            ? Border.all(color: Primary50, width: 0.5)
                            : Border.all(color: Neutral90, width: 0.5),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            if (filter.icon != null) ...[
                              Icon(filter.icon,
                                  size: 15.5.w, color: Secondary50),
                              SizedBox(width: 4.sp),
                            ],
                            Text(
                              filter.title!,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: controller.filterUrutkanState[0]
                                    ? Primary50
                                    : Neutral90,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              } else if (index == 3) {
                final filter = filterUrutkanList.filter_urutkans[3];
                return Obx(
                  () => GestureDetector(
                    onTap: () {
                      controller.filterUrutkanState[3] =
                          !controller.filterUrutkanState[3];
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.slowMiddle,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.sp,
                        vertical: 8.sp,
                      ),
                      decoration: BoxDecoration(
                        color: controller.filterUrutkanState[3]
                            ? Color(0xFFD0E4FF)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(32.r),
                        border: controller.filterUrutkanState[3]
                            ? Border.all(color: Primary50, width: 0.5)
                            : Border.all(color: Neutral90, width: 0.5),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            if (filter.icon != null) ...[
                              Icon(filter.icon,
                                  size: 15.5.w, color: Secondary50),
                              SizedBox(width: 4.sp),
                            ],
                            Text(
                              filter.title!,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: controller.filterUrutkanState[3]
                                    ? Primary50
                                    : Neutral90,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
