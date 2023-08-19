import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';

class InfoProduk extends StatelessWidget {
  const InfoProduk({
    super.key,
    required this.judul,
    required this.info,
  });

  final String judul;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.sp),
      child: Column(
        children: [
          SizedBox(height: 8.sp),
          Row(
            children: [
              Container(
                width: 121.w,
                // color: Colors.amber,
                child: Text(
                  judul,
                  style: TextStyle(
                    fontSize: 11.5.w,
                    fontWeight: FontWeight.w600,
                    color: Neutral90,
                  ),
                ),
              ),
              Container(
                width: 163.w,
                // color: Colors.amber,
                child: Text(
                  info,
                  style: TextStyle(
                    fontSize: 11.5.w,
                    fontWeight: FontWeight.w400,
                    color: Neutral90,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.sp),
          Container(
            height: 1,
            width: Get.width,
            color: Neutral30,
          ),
        ],
      ),
    );
  }
}
