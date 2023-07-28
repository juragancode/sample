import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../model/Filter_model.dart';
import '../../../widgets/AppBarGAS.dart';
import '../../../widgets/FilterAppBar.dart';
import '../../../widgets/TabBarExplore.dart';
import '../../../widgets/backgroundExplore.dart';
import '../../../widgets/contentExplorer.dart';
import '../controllers/home_controller.dart';

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
              // SizedBox(height: 12.sp),
              FilterAppBar(),
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
