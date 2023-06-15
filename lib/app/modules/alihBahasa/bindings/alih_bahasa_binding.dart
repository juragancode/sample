import 'package:get/get.dart';

import '../controllers/alih_bahasa_controller.dart';

class AlihBahasaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AlihBahasaController>(
      () => AlihBahasaController(),
    );
  }
}
