import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../model/toko_model.dart';

class ProductDetailController extends GetxController {
  final List<dynamic> products =
      ShopList().shops.expand((shop) => shop.product).toList();
  final List<RxBool> favoriteProducts = [];

  @override
  void onInit() {
    super.onInit();
    // Initialize favoriteProducts list with initial values from the model
    favoriteProducts
        .addAll(products.map((product) => RxBool(product.favorite)));
  }

  void toggleFavoriteProductInStoreDetail(int index) {
    favoriteProducts[index].toggle();
    print(
        'Product at index $index is now favorite: ${favoriteProducts[index].value}');
  }

  RxBool bacaSelengkapnya = false.obs;

  int calculateNumberOfLines(String text) {
    final textSpan = TextSpan(
        text: text,
        style: TextStyle(
          fontSize: 11.5.w,
          fontWeight: FontWeight.w400,
        ));
    final textPainter = TextPainter(
      text: textSpan,
      maxLines: null, // Set maxLines to null to get actual line count
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(
        maxWidth: Get.width - 16.sp); // Replace with your max text width
    final numberOfLines = textPainter.computeLineMetrics().length;
    return numberOfLines;
  }
}
