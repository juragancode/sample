import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_a_s_app_rekadigi/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../model/toko_model.dart';
import 'Decoration/Shimmer.dart';

bool sdhMasukProdukDetail = true;

class imageProduct_Toko extends StatelessWidget {
  const imageProduct_Toko({
    super.key,
    required this.product,
    required this.shop,
    required this.index,
  });

  final Product product;
  final Shop shop;
  final int index;

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
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                // Find the shop that contains the selected product
                //

                Get.toNamed(
                  Routes.PRODUCT_DETAIL,
                  arguments: {
                    'product': product,
                    'index': index,
                    'shop': shop,
                    'sdhMasukProdukDetail': sdhMasukProdukDetail,
                  }, // Pass the selected shop
                );
              },
              borderRadius: BorderRadius.circular(4.r),
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  image: DecorationImage(
                    image: NetworkImage(product.productImage),
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
