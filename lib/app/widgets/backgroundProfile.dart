import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'Decoration/Shimmer.dart';

class backgroundProfile extends StatelessWidget {
  const backgroundProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: Get.width,
      // height: 178.w,
      child: Stack(
        children: [
          Shimmer_00(),
          SvgPicture.asset(
            'assets/icons/Homepage-Header-profile.svg',
            width: Get.width,
            // height: 187.w,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
