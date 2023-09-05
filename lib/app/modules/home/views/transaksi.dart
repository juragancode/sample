import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../widgets/AppBarGAS.dart';
import '../../../widgets/FilterTransaksi.dart';
import '../../../widgets/backgroundExplore.dart';
import '../controllers/home_controller.dart';

BorderStyle borderStyle = BorderStyle.solid;

class Transaksi extends GetView<HomeController> {
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
              SizedBox(height: 46.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Row(
                  children: [
                    ClipOval(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 32.sp,
                            width: 32.sp,
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: Secondary50,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 6.sp),
                    Text(
                      "Transaksi",
                      style: TextStyle(
                        fontSize: 15.5.sp,
                        fontWeight: FontWeight.w600,
                        color: H333333,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18.sp),
              AppBarGAS(borderStyle: borderStyle),
              // SizedBox(height: 14.sp),
              FilterTransaksi(),
            ],
          ),
        ],
      ),
    );
  }
}
