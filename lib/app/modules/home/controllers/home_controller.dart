import 'package:flutter/material.dart';
import 'package:get/get.dart';

// final HomeController homeController = Get.put(HomeController());

class HomeController extends GetxController {
  // TextEditingController
  TextEditingController searchC = TextEditingController();

  // FocusNode
  FocusNode searchFN = FocusNode();

  // indeks Bottom Navigation Bar
  RxInt selectedIndex = 0.obs;

  final List<String> imageList = [
    'assets/icons/Banner-Belanja-Praktis.png',
    'assets/icons/Banner-Bergabung-GAS.png',
  ];

  final RxInt currentIndex = 0.obs;
  void changePage(int index) {
    selectedIndex.value = index;
  }

  RxBool buttonFloat = false.obs;

  RxInt accountIndex = 0.obs;

  void changeAccountIndex(int index) {
    accountIndex.value = index;
  }

  RxBool isCardExpanded = false.obs;

  void toggleCardExpansion() {
    isCardExpanded.value = !isCardExpanded.value;
  }
}
