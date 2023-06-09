import 'package:get/get.dart';

import '../controllers/verifikasi_daftar_controller.dart';

class VerifikasiDaftarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifikasiDaftarController>(
      () => VerifikasiDaftarController(),
    );
  }
}
