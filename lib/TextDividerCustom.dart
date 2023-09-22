import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/constant/colors.dart';

class TextDividerCustom extends StatelessWidget {
  const TextDividerCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 0.5,
              color: Neutral90,
            ),
          ),
          SizedBox(width: 12.sp),
          Text(
            "atau masuk dengan".tr,
            style: TextStyle(
              color: Neutral90,
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: 12.sp),
          Expanded(
            child: Container(
              height: 0.5,
              color: Neutral90,
            ),
          ),
        ],
      ),
    );
  }
}
