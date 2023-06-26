import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BackgroundHomePage extends StatelessWidget {
  const BackgroundHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 175.w,
      child: SvgPicture.asset(
        'assets/icons/Homepage-Header.svg',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
