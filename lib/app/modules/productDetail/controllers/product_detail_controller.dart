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
}
