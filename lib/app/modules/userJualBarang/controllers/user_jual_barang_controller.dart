import 'package:g_a_s_app_rekadigi/app/model/product_category_model.dart';
import 'package:get/get.dart';

class UserJualBarangController extends GetxController {
  final List<String> processAdd = ['Detail', 'Harga', 'Lokasi', 'Review'];

  List<ProductCategory> productCategory = [
    ProductCategory('1', 'assets/icons/category/ic-fashion.svg', 'Fashion',
        'Jual produk-produk fashion baru maupun bekas'),
    ProductCategory('2', 'assets/icons/category/ic-dailyneeds.svg',
        'Kebutuhan Harian', 'Jual produk-produk kebutuhan harian'),
  ];

  ProductCategory? selectedProductCategory;

  setSelectedProductCategory(ProductCategory productCategory) {
    if (selectedProductCategory == productCategory) {
      selectedProductCategory = null;
    } else {
      selectedProductCategory = productCategory;
    }
    update();
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
