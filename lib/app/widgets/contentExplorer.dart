import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/produk_promo_model.dart';
import '../model/produk_terbaru_model.dart';
import '../model/produk_terlaris_model.dart';
import 'ProdukPromoExplore.dart';
import 'ProdukTerbaru.dart';
import 'ProdukTerlaris.dart';

class ContentExplorer extends StatelessWidget {
  const ContentExplorer({
    super.key,
    required this.productPromoList,
    required this.productTerbaruList,
    required this.productTerlarisList,
  });

  final ProductPromoList productPromoList;
  final ProductTerbaruList productTerbaruList;
  final ProductTerlarisList productTerlarisList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 24.sp),
        ProdukPromoExplore(productPromoList: productPromoList),
        SizedBox(height: 24.0.sp),
        ProdukTerbaru(productTerbaruList: productTerbaruList),
        SizedBox(height: 24.sp),
        ProdukTerlaris(productTerlarisList: productTerlarisList),
        SizedBox(height: 10.sp),
      ],
    );
  }
}
