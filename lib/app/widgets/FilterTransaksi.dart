import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../model/FilterTransaksi_model.dart';
import '../modules/home/controllers/home_controller.dart';
import '../widgets/FilterRiwayatPesanan_ModalBottomSheet.dart';

class FilterTransaksi extends GetView<HomeController> {
  final FilterTransaksiList filterTransaksi = FilterTransaksiList();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // SizedBox(width: 18.sp),
        GestureDetector(
          onTap: () {
            FilterRiwayatPesanan_ModalBottomSheet(context);
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
            padding: EdgeInsets.only(
              right: 12.sp,
              // left: 10.sp,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: filterTransaksi.filters.length,
            itemBuilder: (context, index) {
              final filter = filterTransaksi.filters[index];
              return Obx(
                () => GestureDetector(
                  onTap: () {
                    controller.filterTransaksi.value = index;
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.slowMiddle,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.sp,
                      vertical: 8.sp,
                    ),
                    decoration: BoxDecoration(
                      color: controller.filterTransaksi.value == index
                          ? Color(0xFFD0E4FF)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(32.r),
                      border: controller.filterTransaksi.value == index
                          ? Border.all(color: Primary50, width: 0.5)
                          : Border.all(color: Neutral90, width: 0.5),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            filter.title!,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: controller.filterTransaksi.value == index
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
            },
          ),
        ),
      ],
    );
  }
}
