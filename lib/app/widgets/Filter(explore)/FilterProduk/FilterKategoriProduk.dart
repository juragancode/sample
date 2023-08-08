import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../model/filter_kategori_model.dart';
import '../../../modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';

final FilterKategoriList filterKategoriList = FilterKategoriList();

class FilterKategori extends GetView<ProdukController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Kategori",
          style: TextStyle(
            fontSize: 13.5.w,
            fontWeight: FontWeight.w600,
            color: H333333,
          ),
        ),
        SizedBox(height: 8.sp),
        Wrap(
          direction: Axis.horizontal,
          spacing: 4.sp, // Spasi horizontal antara konten
          runSpacing: 8.sp, // Spasi vertikal antara baris
          children: List.generate(
            filterKategoriList.filter_kategoris.length,
            (index) {
              final filter = filterKategoriList.filter_kategoris[index];
              return Obx(
                () => GestureDetector(
                  onTap: () {
                    controller.filterKategoriState[index] =
                        !controller.filterKategoriState[index];
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
                      color: controller.filterKategoriState[index]
                          ? Color(0xFFD0E4FF)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(32.r),
                      border: controller.filterKategoriState[index]
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
                            color: controller.filterKategoriState[index]
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
