import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../modules/home/controllers/home_controller.dart';
import 'AppBarGAS.dart';
import 'backgroundHomePage.dart';
import 'cardGantiAkun.dart';
import 'contentEmployeeAccount.dart';
import 'contentPersonalAccount.dart';
import 'contentShopAccount.dart';

BorderStyle borderStyle = BorderStyle.none;

class Beranda extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return SingleChildScrollView(
      child: Stack(
        children: [
          SizedBox(height: Get.height - 56),
          BackgroundHomePage(),
          Column(
            children: [
              SizedBox(height: 54.w),
              AppBarGAS(borderStyle: borderStyle),
              SizedBox(height: 63.w),
              cardGantiAkun(),
              SizedBox(height: 12.sp),
              Obx(
                () => AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: Offset(0.0, 1.0),
                        end: Offset(0.0, 0.0),
                      ).animate(animation),
                      child: child,
                    );
                  },
                  child: (() {
                    switch (controller.accountIndex.value) {
                      case 0:
                        return contentPersonalAccount();
                      case 1:
                        return contentShopAccount();
                      case 2:
                        return contentEmployeeAccount();
                      default:
                        return Container();
                    }
                  })(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
