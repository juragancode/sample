import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/filter_model.dart';
import '../views/Beranda.dart';
import '../../../widgets/Blank.dart';
import '../views/profil_view.dart';
import '../views/transaksi_view.dart';
import '../views/explore.dart';

class HomeController extends GetxController {
  // TextEditingController
  TextEditingController searchC = TextEditingController();

  // FocusNode
  FocusNode searchFN = FocusNode();

  final List<String> imageList = [
    'assets/icons/Banner-Belanja-Praktis.png',
    'assets/icons/Banner-Bergabung-GAS.png',
  ];

  final RxInt currentIndex = 0.obs;
  RxBool buttonFloat = false.obs;
  RxInt accountIndex = 0.obs;

  void changeAccountIndex(int index) {
    accountIndex.value = index;
  }

  // indeks Bottom Navigation Bar
  final PageController pageController = PageController(initialPage: 0);
  RxInt selectedIndexBottomNavBar = 0.obs;
  RxList<dynamic> pageBottomNavBar = [
    Beranda(),
    Explore(),
    Blank(),
    TransaksiView(),
    ProfilView(),
  ].obs;

  void changePage(int index) {
    if (selectedIndexBottomNavBar.value != index) {
      selectedIndexBottomNavBar.value = index;
      pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  //
  // Explore
  RxInt isTokoIndex = 0.obs;

  // filter
  RxInt filterIndex = 0.obs;
  List<bool> filterSelectedState =
      List.filled(FilterList().filters.length, false).obs;

  @override
  void onInit() {
    // Inisialisasi filterSelectedState untuk index 0 menjadi true di awal
    filterSelectedState[0] = true;
    super.onInit();
  }
}
