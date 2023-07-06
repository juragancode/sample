import 'package:get/get.dart';

import '../controllers/home_karyawan_controller.dart';

class HomeKaryawanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeKaryawanController>(
      () => HomeKaryawanController(),
    );
  }
}
