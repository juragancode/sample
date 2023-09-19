// import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../modules/register/controllers/register_controller.dart';

class ButtonCustom extends GetView<RegisterController> {
  const ButtonCustom({
    super.key,
    required this.splashFactory,
    required this.onTap,
    required this.controller_,
    required this.title,
    required this.gradient,
  });

  final InteractiveInkFeatureFactory splashFactory;
  final Function() onTap;
  final bool controller_;
  final String title;
  final LinearGradient gradient;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashFactory: splashFactory,
        borderRadius: BorderRadius.circular(32.r),
        onTap: onTap,
        child: Ink(
          // width: 343.w,
          // height: 42.w,
          decoration: BoxDecoration(
            gradient: gradient,
            borderRadius: BorderRadius.circular(32.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.w),
            child: Container(
              height: 23.5.w,
              child: Center(
                child: controller_
                    ?
                    //  Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Text(
                    //         //ganti tulisan daftar dengan loading ketika request load
                    //         'Loading',
                    //         style: TextStyle(
                    //           fontSize: 15.5.w,
                    //           fontWeight: FontWeight.w600,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //       // SizedBox(width: 2.w),
                    //       Column(
                    //         children: [
                    //           SizedBox(height: 10.w),
                    //           Flexible(
                    //             child: SpinKitThreeBounce(
                    //               color: Colors.white,
                    //               size: 14.0.sp,
                    //               // size: 14.0.sp,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ],
                    //   )
                    Container(
                        height: 24.w,
                        width: 24.w,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
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
      ),
    );
  }
}
