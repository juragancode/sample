import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../model/toko_model.dart';
import '../../../widgets/Decoration/Shimmer.dart';

class BackgroundProductDetail extends StatelessWidget {
  const BackgroundProductDetail({
    super.key,
    required this.product,
  });

  final Shop product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 172.w,
      child: Stack(
        children: [
          Shimmer_00(),
          Image.network(
            product.bannerShop,
            width: Get.width,
            height: 172.w,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
