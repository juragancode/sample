import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';
import '../model/toko_model.dart';
import 'Decoration/Shimmer.dart';

class imageProduct_Toko extends StatelessWidget {
  const imageProduct_Toko({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0.w,
      height: 80.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(
          strokeAlign: BorderSide.strokeAlignOutside,
          color: Neutral10,
          width: 0.5,
        ),
      ),
      child: Stack(
        children: [
          Shimmer_01(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              image: DecorationImage(
                image: NetworkImage(product.productImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
