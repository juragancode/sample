import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../modules/login/controllers/login_controller.dart';

class ButtonGoogleAuth extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LoginController());
    return InkWell(
      onTap: () {
        controller.loginWithGoogle();
      },
      splashColor: splashColor,
      highlightColor: highlightColor,
      borderRadius: BorderRadius.circular(50.r),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
          border: Border.all(
            color: Color(0xFF216BC9), // Warna garis tepi
            width: 1, // Lebar garis tepi
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Wrap(
            // alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(1.w),
                child: Container(
                  width: 25.w,
                  height: 25.w,
                  child: SvgPicture.asset(
                    "assets/icons/iconGoogle.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 3.w),
              Text(
                "Google",
                style: TextStyle(
                  fontSize: 13.5.w,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Primary50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
