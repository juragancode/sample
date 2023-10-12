import 'package:get/get.dart';

import '../controllers/daftar_toko_controller.dart';

class DaftarTokoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DaftarTokoController>(
      () => DaftarTokoController(),
    );
  }
}
