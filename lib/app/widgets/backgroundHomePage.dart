import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'Shimmer.dart';

class BackgroundHomePage extends StatelessWidget {
  const BackgroundHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 178.w,
      child: Stack(
        children: [
          Shimmer_00(),
          SvgPicture.asset(
            'assets/icons/Homepage-Header.svg',
            width: Get.width,
            height: 187.w,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
