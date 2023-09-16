import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import '../../modules/register/controllers/register_controller.dart';

class ButtonCustom extends GetView<RegisterController> {
  const ButtonCustom({
    super.key,
    required this.splashFactory,
    required this.onTap,
    required this.controller_,
    required this.title,
    // required this.child,
  });

  final InteractiveInkFeatureFactory splashFactory;
  final Function() onTap;
  final bool controller_;
  final String title;
  // final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Material(
        color: Colors.transparent,
        child: InkWell(
          splashFactory: splashFactory,
          borderRadius: BorderRadius.circular(32.r),
          onTap: onTap,
          child: Ink(
            // width: 343.w,
            height: 42.w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: controller_
                    ? [
                        Primary10,
                        Primary10,
                      ]
                    : controller.isValid &&
                            controller.syaratKebijakanCheck.isTrue
                        ? [
                            Primary30,
                            Primary50,
                          ]
                        : [
                            Color(0xFFB5B5B5),
                            Color(0xFFB5B5B5),
                          ], // Daftar warna gradient yang ingin digunakan
                begin: Alignment.topCenter, // Posisi awal gradient
                end: Alignment.bottomCenter, // Posisi akhir gradient
              ),
              borderRadius: BorderRadius.circular(32.r),
            ),
            child: Center(
              child: controller_
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          //ganti tulisan daftar dengan loading ketika request load
                          'Loading',
                          style: TextStyle(
                            fontSize: 15.5.w,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        // SizedBox(width: 2.w),
                        Column(
                          children: [
                            SizedBox(height: 10.w),
                            Flexible(
                              child: SpinKitThreeBounce(
                                color: Colors.white,
                                size: 14.0.sp,
                                // size: 14.0.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Text(
                      //ganti tulisan daftar dengan loading ketika request load
                      title,
                      style: TextStyle(
                        fontSize: 15.5.w,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
