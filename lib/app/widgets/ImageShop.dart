import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';
import 'Decoration/Shimmer.dart';

class ImageShop extends StatelessWidget {
  const ImageShop({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.w,
      width: 40.w,
      decoration: BoxDecoration(
        // color: Colors.amber,
        shape: BoxShape.circle,
        border: Border.all(
          strokeAlign: BorderSide.strokeAlignOutside,
          color: Neutral50,
          width: 0.5,
        ),
      ),
      child: Stack(
        children: [
          ClipOval(
            child: Shimmer_01(),
          ),
          Center(
            child: ClipOval(
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
