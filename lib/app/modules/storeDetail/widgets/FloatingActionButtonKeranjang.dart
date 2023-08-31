import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g_a_s_app_rekadigi/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';

class FloatingActionButtonKeranjang extends StatelessWidget {
  const FloatingActionButtonKeranjang({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // elevation: 0,
      onPressed: () {
        //
        print("keranjang");
        Get.toNamed(Routes.KERANJANG);
      },
      child: Ink(
        width: 100.sp,
        height: 100.sp,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Secondary10,
              Secondary50,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(32.r),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            5.0.sp,
            3.0.sp,
            3.0.sp,
            3.0.sp,
          ),
          child: SvgPicture.asset(
            'assets/icons/iconKeranjang.svg',
          ),
        ),
      ),
    );
  }
}
