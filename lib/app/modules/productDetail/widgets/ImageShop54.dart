import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../model/toko_model.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/Decoration/Shimmer.dart';

class ImageShop54 extends StatelessWidget {
  const ImageShop54({
    super.key,
    required this.image,
    required this.shop,
    required this.sdhMasukProdukDetail,
  });

  final ImageProvider image;
  final Shop shop;
  final bool sdhMasukProdukDetail;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.w,
      width: 54.w,
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
              child: InkWell(
                onTap: () {
                  //
                  if (sdhMasukProdukDetail) {
                    Get.toNamed(
                      Routes.STORE_DETAIL,
                      arguments: shop,
                    );
                  } else {
                    Get.back();
                  }
                },
                child: Ink(
                  height: 54.w,
                  width: 54.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: image,
                      fit: BoxFit.cover,
                    ),
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
