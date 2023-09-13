import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_a_s_app_rekadigi/app/constant/colors.dart';

class FormButtonWidget extends StatelessWidget {
  final bool isActive;
  final Function onTap;
  const FormButtonWidget(
      {super.key, required this.isActive, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.w),
      child: Material(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(100.r),
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: isActive ? null : Neutral50,
            gradient: isActive
                ? LinearGradient(
                    colors: GradientColor.primaryGradient,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)
                : null,
          ),
          child: InkWell(
            // highlightColor: Colors.transparent,
            splashColor: Primary50.withOpacity(0.5),
            onTap: () {
              onTap();
            },
            child: Container(
              padding: EdgeInsets.all(10.w),
              child: Text(
                'Selanjutnya',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: BackgroundColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
