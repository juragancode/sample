import 'package:get/get.dart';

import '../controllers/izinkan_akses_lokasi_controller.dart';

class IzinkanAksesLokasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IzinkanAksesLokasiController>(
      () => IzinkanAksesLokasiController(),
    );
  }
}
