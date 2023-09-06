import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../model/FilterTransaksi_model.dart';
import '../modules/home/controllers/home_controller.dart';
import 'FooterModalBottomSheet.dart';
import 'HeaderModalBottomSheet.dart';

Future<dynamic> FilterRiwayatPesanan_ModalBottomSheet(BuildContext context) {
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
              return Container(
                height: Get.height / 2.7,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8.sp + 4.sp + 16.sp + 16.sp + 24.w,
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.sp),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lihat Riwayat",
                                  style: TextStyle(
                                    fontSize: 13.5.w,
                                    fontWeight: FontWeight.w600,
                                    color: H333333,
                                  ),
                                ),
                                SizedBox(height: 8.sp),
                                Wrap(
                                  direction: Axis.horizontal,
                                  spacing: 4.sp,
                                  runSpacing: 8.sp,
                                  children: List.generate(
                                    filterTransaksiList.filters.length,
                                    (index) {
                                      final filter =
                                          filterTransaksiList.filters[index];
                                      return Obx(
                                        () => GestureDetector(
                                          onTap: () {
                                            controller.filterTransaksi.value =
                                                index;
                                          },
                                          child: AnimatedContainer(
                                            // width: 150.w,
                                            duration:
                                                Duration(milliseconds: 300),
                                            curve: Curves.slowMiddle,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 16.sp,
                                              vertical: 8.sp,
                                            ),
                                            decoration: BoxDecoration(
                                              color: controller.filterTransaksi
                                                          .value ==
                                                      index
                                                  ? Color(0xFFD0E4FF)
                                                  : Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(32.r),
                                              border: controller.filterTransaksi
                                                          .value ==
                                                      index
                                                  ? Border.all(
                                                      color: Primary50,
                                                      width: 0.5)
                                                  : Border.all(
                                                      color: Neutral90,
                                                      width: 0.5),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  filter.title!,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: controller
                                                                .filterTransaksi
                                                                .value ==
                                                            index
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
                            ),
                          ),
                          SizedBox(height: 70.w),
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
