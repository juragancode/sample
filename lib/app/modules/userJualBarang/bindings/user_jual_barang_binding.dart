import 'package:get/get.dart';

import '../controllers/user_jual_barang_controller.dart';

class UserJualBarangBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserJualBarangController>(
      () => UserJualBarangController(),
    );
  }
}
