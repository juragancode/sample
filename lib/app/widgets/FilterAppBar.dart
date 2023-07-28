import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';

import '../model/filter_model.dart';
import '../model/filter_lokasi_model.dart';
import '../model/filter_urutkan_model.dart';
import '../modules/home/controllers/home_controller.dart';
import 'FilterModalBottomSheet.dart';

class FilterAppBar extends GetView<HomeController> {
  final FilterList filterList = FilterList();
  final FilterLokasiList filterLokasiList = FilterLokasiList();
  final FilterUrutkanList filterUrutkanList = FilterUrutkanList();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // SizedBox(width: 18.sp),
        GestureDetector(
          onTap: () {
            FilterModalBottomSheet(context);
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
            itemCount: 4, // Set itemCount menjadi 4 untuk menampilkan 4 item
            itemBuilder: (context, index) {
              Widget filterItem(String title) {
                final bool isActive = controller.filterUrutkanState[index];
                return GestureDetector(
                  onTap: () {
                    controller.filterUrutkanState[index] = !isActive;
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.slowMiddle,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.sp,
                      vertical: 8.sp,
                    ),
                    decoration: BoxDecoration(
                      color: isActive ? Color(0xFFD0E4FF) : Colors.transparent,
                      borderRadius: BorderRadius.circular(32.r),
                      border: isActive
                          ? Border.all(color: Primary50, width: 0.5)
                          : Border.all(color: Neutral90, width: 0.5),
                    ),
                    child: Center(
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: isActive ? Primary50 : Neutral90,
                        ),
                      ),
                    ),
                  ),
                );
              }

              if (index == 0) {
                return filterItem(filterUrutkanList.filter_urutkans[1].title!);
              } else if (index == 1) {
                return filterItem(filterLokasiList.filter_lokasis[0].title!);
              } else if (index == 2) {
                return filterItem(filterUrutkanList.filter_urutkans[0].title!);
              } else if (index == 3) {
                return filterItem(filterUrutkanList.filter_urutkans[3].title!);
              } else {
                return Container(); // Kembalikan wadah kosong untuk indeks lainnya
              }
            },
          ),
        ),
      ],
    );
  }
}
