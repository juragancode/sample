import 'package:flutter/material.dart';
import 'package:g_a_s_app_rekadigi/app/model/keranjang_model.dart';
import 'package:get/get.dart';

class KeranjangController extends GetxController {
  void showConfirmationDialog() {
    Get.defaultDialog(
      title: "Konfirmasi",
      content: Text("Apakah anda yakin ingin menghapus keranjang ini?"),
      textCancel: "Tidak",
      textConfirm: "Ya",
      onConfirm: () {
        Get.back();
      },
      onCancel: () {
        Get.back();
      },
    );
  }

  final List<dynamic> products =
      ShopList().shops.expand((shop) => shop.product).toList();
  final List<RxBool> checkProducts = [];

  @override
  void onInit() {
    super.onInit();
    checkProducts.addAll(products.map((product) => RxBool(product.check)));
  }

  void toggleCheck(int index) {
    checkProducts[index].toggle();
    print(
        'Product at index $index is now check: ${checkProducts[index].value}');
  }

  bool areAllProductsCheckedInShop(int shopIndex) {
    final shop = ShopList().shops[shopIndex];
    return shop.product.every((product) => product.check);
  }

  void toggleAllProductsCheckInShop(int shopIndex) {
    final shop = ShopList().shops[shopIndex];
    final allChecked = areAllProductsCheckedInShop(shopIndex);

    for (var i = 0; i < shop.product.length; i++) {
      shop.product[i].check = !allChecked;
      checkProducts[i].value = !allChecked;
    }
  }
}
