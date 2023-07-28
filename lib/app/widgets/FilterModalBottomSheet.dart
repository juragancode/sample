import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../model/filter_urutkan_model.dart';
import '../model/filter_kategori_model.dart';
import '../modules/home/controllers/home_controller.dart';

final FilterUrutkanList filterUrutkanList = FilterUrutkanList();
final FilterKategoriList filterKategoriList = FilterKategoriList();

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
                          // mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "Filter",
                              style: TextStyle(
                                fontSize: 15.5.w,
                                fontWeight: FontWeight.w600,
                                color: H333333,
                              ),
                            ),
                            SizedBox(height: 16.sp),
                            FilterUrutkan(),
                            SizedBox(height: 24.sp),
                            FilterKategori(),
                            SizedBox(height: 24.sp),
                            FilterLokasi(),
                            SizedBox(height: 24.sp),
                            FilterLokasi(),
                            SizedBox(height: 24.sp),
                            FilterLokasi(),
                            SizedBox(height: 24.sp),
                            FilterLokasi(),
                            SizedBox(height: 75.sp),
                            //
                          ],
                        ),
                      ),
                    ),
                    HeaderModalBottomSheet(),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        color: BackgroundColor,
                        height: 61.sp,
                        width: Get.width,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.sp,
                            horizontal: 16.sp,
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(32.r),
                              onTap: () {
                                //
                                print("Tampilkan Hasil");
                              },
                              child: Ink(
                                // width: 149.w,
                                height: 31.w,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF4D89D4),
                                      Color(0xFF216BC9),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                  borderRadius: BorderRadius.circular(32.r),
                                ),
                                child: Center(
                                  child: Text(
                                    "Tampilkan Hasil",
                                    style: TextStyle(
                                      fontSize: 11.5.w,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
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

class HeaderModalBottomSheet extends StatelessWidget {
  const HeaderModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.sp + 4.sp + 16.sp,
      width: Get.width,
      decoration: BoxDecoration(
        color: BackgroundColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24.0.r),
        ),
      ),
      child: Column(
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
        ],
      ),
    );
  }
}

class FilterUrutkan extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Urutkan",
          style: TextStyle(
            fontSize: 15.5.w,
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
            filterUrutkanList.filter_urutkans.length,
            (index) {
              final filter = filterUrutkanList.filter_urutkans[index];
              return Obx(
                () => GestureDetector(
                  onTap: () {
                    controller.filterUrutkanState[index] =
                        !controller.filterUrutkanState[index];
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
                      color: controller.filterUrutkanState[index]
                          ? Color(0xFFD0E4FF)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(32.r),
                      border: controller.filterUrutkanState[index]
                          ? Border.all(color: Primary50, width: 0.5)
                          : Border.all(color: Neutral90, width: 0.5),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (filter.icon != null) ...[
                          Icon(filter.icon, size: 15.w, color: Secondary50),
                          SizedBox(width: 4.sp),
                        ],
                        Text(
                          filter.title!,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: controller.filterUrutkanState[index]
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

class FilterKategori extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Kategori",
          style: TextStyle(
            fontSize: 15.5.w,
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

class FilterLokasi extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Lokasi",
          style: TextStyle(
            fontSize: 15.5.w,
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
