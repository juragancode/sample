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
    required this.title,
  });

  final InteractiveInkFeatureFactory splashFactory;
  final Function() onTap;
  final String title;

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
                colors:
                    controller.isValid && controller.syaratKebijakanCheck.isTrue
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
              child: Text(
                //ganti tulisan daftar dengan loading ketika request load
                title.tr,
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
