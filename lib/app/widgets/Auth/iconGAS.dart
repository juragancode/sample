import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class iconGAS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104.w,
      height: 104.w,
      child: SvgPicture.asset(
        "assets/icons/iconGAS.svg",
        fit: BoxFit.cover,
      ),
      // color: Colors.amber,
    );
  }
}
