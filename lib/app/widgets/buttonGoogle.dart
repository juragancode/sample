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
    return Obx(
      () => InkWell(
        onTap: controller.loadingGoogle.isFalse
            ? () {
                controller.loginWithGoogle();
              }
            : () {},
        splashColor: splashColor,
        highlightColor: highlightColor,
        borderRadius: BorderRadius.circular(50.r),
        child: Container(
          width: 94.w,
          height: 40.5.w,
          decoration: BoxDecoration(
            // color: Colors.amber,
            borderRadius: BorderRadius.circular(50.r),
            border: Border.all(
              color: Color(0xFF216BC9), // Warna garis tepi
              width: 1, // Lebar garis tepi
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(6.w),
            child: controller.loadingGoogle.isTrue
                ? Center(
                    child: Container(
                      height: 24.w,
                      width: 24.w,
                      child: CircularProgressIndicator(
                        color: Primary30,
                        backgroundColor: Primary10.withOpacity(0.5),
                        strokeWidth: 5.w,
                      ),
                    ),
                  )
                : Row(
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
      ),
    );
  }
}
