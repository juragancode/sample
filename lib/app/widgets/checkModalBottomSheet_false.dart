import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class checkModalBottomSheet_false extends StatelessWidget {
  const checkModalBottomSheet_false({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.sp,
      height: 20.sp,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFD9D9D9),
      ),
      child: Center(
        child: Container(
          width: 14.sp,
          height: 14.sp,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
