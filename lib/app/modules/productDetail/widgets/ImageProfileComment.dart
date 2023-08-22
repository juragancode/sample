import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant/colors.dart';
import '../../../widgets/Decoration/Shimmer.dart';

class ImageProfileComment extends StatelessWidget {
  const ImageProfileComment({
    super.key,
    required this.image,
  });

  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.w,
      width: 32.w,
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
          ClipOval(
            child: Material(
              color: Colors.transparent,
              child: Container(
                height: 32.w,
                width: 32.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
