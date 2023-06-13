import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class splashAccountBerhasilDibuat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width.w,
      height: Get.height.h,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 222,
            height: 199.99,
            child: SvgPicture.asset(
              "assets/icons/SuccessVector.svg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 24),
          Text(
            "Yeay! akun berhasil dibuat",
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              color: Color(0xFF333333),
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Nikmati kemudahan jual beli dengan GAS Indonesia!",
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: Color(0xFF858585),
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
