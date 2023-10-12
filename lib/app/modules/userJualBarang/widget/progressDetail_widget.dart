import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_a_s_app_rekadigi/app/constant/colors.dart';

class ProgressDetailWidget extends StatelessWidget {
  final List<String> data;
  const ProgressDetailWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 8.w, left: 20.w, right: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                data.length - 1,
                (index) => ConnectorIndicator(
                  index: index,
                  data: data[index],
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ...List.generate(
                  data.length,
                  (index) => index < 3
                      ? Expanded(
                          child: DotIndicator(
                          index: index,
                          data: data[index],
                        ))
                      : DotIndicator(
                          index: index,
                          data: data[index],
                        )),
            ],
          ),
        ),
      ],
    );
  }
}

class DotIndicator extends StatelessWidget {
  final int index;
  final String data;
  const DotIndicator({super.key, required this.index, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              child: ClipOval(
                child: Container(
                  height: 20.w,
                  width: 20.w,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: GradientColor.primaryGradient)),
                  child: Center(
                    child: ClipOval(
                      child: Container(
                        height: 16.w,
                        width: 16.w,
                        decoration: BoxDecoration(color: BackgroundColor),
                        child: Center(
                          child: Text(
                            (index + 1).toString(),
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: Primary50),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 6.w,
            ),
            Text(
              data,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ],
    );
  }
}

class ConnectorIndicator extends StatelessWidget {
  final int index;
  final String data;
  const ConnectorIndicator(
      {super.key, required this.index, required this.data});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 2.w,
        decoration: BoxDecoration(
            color: index == 0
                ? Neutral10
                : index == 1
                    ? Primary30
                    : Warning50),
      ),
    );
  }
}
