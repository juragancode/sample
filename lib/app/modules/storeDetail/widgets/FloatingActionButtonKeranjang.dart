import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
      },
      child: Ink(
        width: 56.sp,
        height: 56.sp,
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
