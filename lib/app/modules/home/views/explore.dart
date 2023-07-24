import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../constant/colors.dart';
import '../controllers/home_controller.dart';

import '../../../model/Filter_model.dart';
import '../../../widgets/AppBarGAS.dart';
import '../../../widgets/TabBarExplore.dart';
import '../../../widgets/backgroundExplore.dart';
import '../../../widgets/contentExplorer.dart';

BorderStyle borderStyle = BorderStyle.solid;

class Explore extends GetView<HomeController> {
  final FilterList filterList = FilterList();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return SingleChildScrollView(
      child: Stack(
        children: [
          SizedBox(height: Get.height - 56),
          backgroundExplore(),
          Column(
            children: [
              SizedBox(height: 54.w),
              AppBarGAS(borderStyle: borderStyle),
              TabBarExplore(),
              SizedBox(height: 12.sp),
              Row(
                children: [
                  SizedBox(width: 18.sp),
                  Container(
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
                  SizedBox(width: 8.sp),
                  Container(
                    height: 32.w,
                    width: Get.width - 28.w - 18.sp - 8.sp,
                    child: ListView.separated(
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 4.w);
                      },
                      padding: EdgeInsets.only(right: 12.sp),
                      scrollDirection: Axis.horizontal,
                      itemCount: filterList.filters.length,
                      itemBuilder: (context, index) {
                        final filter = filterList.filters[index];
                        return Obx(
                          () => GestureDetector(
                            onTap: () {
                              controller.filterSelectedState[index] =
                                  !controller.filterSelectedState[index];
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.slowMiddle,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.sp,
                                vertical: 8.sp,
                              ),
                              decoration: BoxDecoration(
                                color: controller.filterSelectedState[index]
                                    ? Color(0xFFD0E4FF)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(32.r),
                                border: controller.filterSelectedState[index]
                                    ? Border.all(color: Primary50, width: 0.5)
                                    : Border.all(color: Neutral90, width: 0.5),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    if (filter.icon != null) ...[
                                      Icon(filter.icon,
                                          size: 15.w, color: Secondary50),
                                      SizedBox(width: 4.sp),
                                    ],
                                    Text(
                                      filter.title!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: controller
                                                .filterSelectedState[index]
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
              ),
              Obx(
                () => IndexedStack(
                  index: controller.isTokoIndex.value,
                  children: [
                    ContentExplorer(),
                    Container(
                      width: Get.width,
                      height: Get.height,
                      child: Center(
                        child: Text("Halaman Toko"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
