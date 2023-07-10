import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

final HomeController homeController = Get.put(HomeController());

class HomeController extends GetxController {
  // TextEditingController
  TextEditingController searchC = TextEditingController();

  // FocusNode
  FocusNode searchFN = FocusNode();

  // indeks Bottom Navigation Bar
  RxInt selectedIndex = 0.obs;
  RxInt accountIndex = 0.obs;

  final List<String> imageList = [
    'assets/icons/Banner-Belanja-Praktis.png',
    'assets/icons/Banner-Bergabung-GAS.png',
  ];

  final RxInt currentIndex = 0.obs;
  void changePage(int index) {
    selectedIndex.value = index;
  }

  RxBool buttonFloat = false.obs;

  void navigateToHomePage() {
    if (homeController.accountIndex.value == 1) {
      Get.toNamed(Routes.HOME);
    } else if (homeController.accountIndex.value == 2) {
      Get.toNamed(Routes.HOME_TOKO);
    } else if (homeController.accountIndex.value == 3) {
      Get.toNamed(Routes.HOME_KARYAWAN);
    }
  }
}
