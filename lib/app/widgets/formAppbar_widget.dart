import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_a_s_app_rekadigi/app/constant/colors.dart';

class FormAppBarWidget extends StatelessWidget {
  final Function onBack;
  final bool? showRightBtn;
  final String? rightBtnLabel;
  final Function? rightBtnClick;
  const FormAppBarWidget(
      {super.key,
      required this.onBack,
      this.showRightBtn,
      this.rightBtnLabel,
      this.rightBtnClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          18.w, 18.w + ScreenUtil().statusBarHeight, 18.w, 18.w),
      decoration: BoxDecoration(color: BackgroundColor, boxShadow: [
        BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 24,
            spreadRadius: 4,
            color: TextBlack.withOpacity(0.10))
      ]),
      child: Row(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  onBack();
                },
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: Secondary50,
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                'Pilih Kategori',
                style: TextStyle(
                    color: TextBlack,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp),
              ),
            ],
          ),
          Spacer(),
          if (showRightBtn == true)
            GestureDetector(
              onTap: () {
                if (rightBtnClick != null) {
                  rightBtnClick!();
                }
              },
              child: Text(
                rightBtnLabel.toString(),
                style: TextStyle(
                    color: Primary50,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp),
              ),
            )
        ],
      ),
    );
  }
}
