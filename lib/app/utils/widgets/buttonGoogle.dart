import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonGoogleAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Center(
        child: Flexible(
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
                  Container(
                    width: 30.w,
                    height: 30.w,
                    child: SvgPicture.asset(
                      "assets/icons/iconGoogle.svg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    "Google",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF216BC9),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
