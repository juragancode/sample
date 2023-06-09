import 'package:get/get.dart';

import '../controllers/atur_ulang_password_controller.dart';

class AturUlangPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AturUlangPasswordController>(
      () => AturUlangPasswordController(),
    );
  }
}
