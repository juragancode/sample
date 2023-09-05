import 'package:get/get.dart';

class BuatPesananController extends GetxController {
  RxInt tipePembelian = 0.obs;

  RxInt metodePembayaranIndex = 0.obs;

  void changeAccountIndex(int index) {
    metodePembayaranIndex.value = index;
  }
}
