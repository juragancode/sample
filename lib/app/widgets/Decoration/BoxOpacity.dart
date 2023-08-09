import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoxOpacity extends StatelessWidget {
  const BoxOpacity({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF858585).withOpacity(0.35),
            Color(0xFF858585).withOpacity(0.35),
            Color(0xFF858585).withOpacity(0.5),
          ],
          stops: [0.35, 0.35, 0.5],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: child,
    );
  }
}
