import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../model/filter_lokasi_model.dart';
import '../../../modules/home/controllers/home_controller.dart';

final FilterLokasiList filterLokasiList = FilterLokasiList();

class FilterLokasi extends GetView<TokoController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Lokasi",
              style: TextStyle(
                fontSize: 13.5.w,
                fontWeight: FontWeight.w600,
                color: H333333,
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(4.r),
              onTap: () {
                //
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.sp),
                child: Text(
                  "Lihat Semua",
                  style: TextStyle(
                    fontSize: 13.5.w,
                    fontWeight: FontWeight.w600,
                    color: Primary50,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8.sp),
        Wrap(
          direction: Axis.horizontal,
          spacing: 4.sp, // Spasi horizontal antara konten
          runSpacing: 8.sp, // Spasi vertikal antara baris
          children: List.generate(
            filterLokasiList.filter_lokasis.length,
            (index) {
              final filter = filterLokasiList.filter_lokasis[index];
              return Obx(
                () => GestureDetector(
                  onTap: () {
                    controller.filterLokasiState[index] =
                        !controller.filterLokasiState[index];
                  },
                  child: AnimatedContainer(
                    // width: 150.w,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.slowMiddle,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.sp,
                      vertical: 8.sp,
                    ),
                    decoration: BoxDecoration(
                      color: controller.filterLokasiState[index]
                          ? Color(0xFFD0E4FF)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(32.r),
                      border: controller.filterLokasiState[index]
                          ? Border.all(color: Primary50, width: 0.5)
                          : Border.all(color: Neutral90, width: 0.5),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          filter.title!,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: controller.filterLokasiState[index]
                                ? Primary50
                                : Neutral90,
                          ),
                        ),
                      ],
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
