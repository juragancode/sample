import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MessageStoreDetail extends StatelessWidget {
  const MessageStoreDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.all(8.6.sp),
        child: ClipOval(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                //
                print('kirim pesan');
              },
              child: Padding(
                padding: EdgeInsets.all(10.sp),
                child: Container(
                  height: 22.w,
                  width: 22.w,
                  child: SvgPicture.asset(
                    'assets/icons/icon-Message-yellow.svg',
                    fit: BoxFit.contain,
                    // height: 20.sp,
                    // width: 20.sp,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
