import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
}
