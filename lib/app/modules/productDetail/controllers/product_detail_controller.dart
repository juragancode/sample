import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;
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

  String getLimitedText(String text, int maxLines) {
    List<String> lines = text.split('\n');
    if (lines.length <= maxLines) {
      return text;
    }
    return lines.take(maxLines).join('\n') + '...';
  }

  ///
  String formatTimeDifference(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays == 0) {
      return 'Hari ini';
    } else if (difference.inDays == 1) {
      return 'Kemarin';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} hari lalu';
    } else if (difference.inDays < 14) {
      return 'Seminggu lalu';
    } else if (difference.inDays < 21) {
      return '2 minggu lalu';
    } else if (difference.inDays < 30) {
      return '3 minggu lalu';
    } else if (difference.inDays < 60) {
      return 'Sebulan lalu';
    } else if (difference.inDays < 365) {
      final months = difference.inDays ~/ 30;
      return '$months bulan lalu';
    } else if (difference.inDays < 365 * 2) {
      return '1 tahun lalu';
    } else {
      final formatter = intl.DateFormat('dd-MM-yyyy');
      return formatter.format(dateTime);
    }
  }
}
