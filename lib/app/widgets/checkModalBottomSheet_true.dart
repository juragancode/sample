import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class checkModalBottomSheet_true extends StatelessWidget {
  const checkModalBottomSheet_true({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.sp,
      height: 20.sp,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            Color(0xFF4D89D4),
            Color(0xFF216BC9),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Container(
          width: 14.sp,
          height: 14.sp,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}
