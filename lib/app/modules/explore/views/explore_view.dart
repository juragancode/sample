import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../model/Filter_model.dart';
import '../../../widgets/AppBarExplore.dart';
import '../../../widgets/TabBarExplore.dart';
import '../../../widgets/contentExplorer.dart';
import '../../../widgets/backgroundExplore.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/explore_controller.dart';

final HomeController homeController = Get.put(HomeController());

class ExploreView extends GetView<ExploreController> {
  final FilterList filterList = FilterList();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return GestureDetector(
      onTap: () {
        homeController.searchFN.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        // backgroundColor: Color.fromARGB(255, 204, 246, 183),
        backgroundColor: BackgroundColor,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Stack(
                children: [
                  SizedBox(height: Get.height - 56),
                  backgroundExplore(),
                  Column(
                    children: [
                      SizedBox(height: 54.w),
                      AppBarExplore(controller: homeController),
                      TabBarExplore(),
                      Column(
                        children: [
                          SizedBox(height: 12.sp),
                          Row(
                            children: [
                              SizedBox(width: 18.sp),
                              Container(
                                width: 28.0.sp,
                                height: 28.0.sp,
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
                                  padding: EdgeInsets.only(top: 1.5),
                                  child: Icon(
                                    CupertinoIcons.line_horizontal_3_decrease,
                                    color: Colors.white,
                                    size: 17.sp,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.sp),
                              Container(
                                height: 33.sp,
                                width: Get.width - 32.0.sp - 18.sp - 8.sp,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: filterList.filters.length,
                                  itemBuilder: (context, index) {
                                    final filter = filterList.filters[index];
                                    return Obx(
                                      () => GestureDetector(
                                        onTap: () {
                                          homeController
                                                  .filterSelectedState[index] =
                                              !homeController
                                                  .filterSelectedState[index];
                                        },
                                        child: AnimatedContainer(
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.slowMiddle,
                                          margin: EdgeInsets.symmetric(
                                            horizontal: 4.sp,
                                          ),
                                          // height: 33.sp,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20.sp,
                                            vertical: 8.sp,
                                          ),
                                          decoration: BoxDecoration(
                                            color: homeController
                                                    .filterSelectedState[index]
                                                ? Color(0xFFD0E4FF)
                                                : Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(32.r),
                                            border: homeController
                                                    .filterSelectedState[index]
                                                ? Border.all(
                                                    color: Primary50,
                                                    width: 0.5)
                                                : Border.all(
                                                    color: Neutral90,
                                                    width: 0.5),
                                          ),
                                          child: Center(
                                            child: Row(
                                              children: [
                                                if (filter.icon != null) ...[
                                                  Icon(filter.icon,
                                                      size: 18,
                                                      color: Secondary50),
                                                  SizedBox(width: 4.sp),
                                                ],
                                                Text(
                                                  filter.title!,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: homeController
                                                                .filterSelectedState[
                                                            index]
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
                        ],
                      ),
                      Obx(
                        () => IndexedStack(
                          index: homeController.isTokoIndex.value,
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
            ),
          ],
        ),
      ),
    );
  }
}
