import 'package:get/get.dart';

import '../controllers/verifikasi_lupa_password_controller.dart';

class VerifikasiLupaPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifikasiLupaPasswordController>(
      () => VerifikasiLupaPasswordController(),
    );
  }
}
