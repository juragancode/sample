import 'package:get/get.dart';

class HomeController extends GetxController {
  // indeks Bottom Navigation Bar
  RxInt selectedIndex = 0.obs;
  void changePage(int index) {
    selectedIndex.value = index;
  }
}
