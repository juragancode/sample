import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/filter_urutkan_model.dart';
import '../../../model/filter_model.dart';
import '../../../model/filter_kategori_model.dart';
import '../../../model/filter_lokasi_model.dart';
import '../views/Beranda.dart';
import '../../../widgets/Blank.dart';
import '../views/profil.dart';
import '../views/transaksi.dart';
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
    Transaksi(),
    Profil(),
  ].obs;

  void changePage(int index) {
    if (selectedIndexBottomNavBar.value != index) {
      selectedIndexBottomNavBar.value = index;
      pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 600),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    }
  }

  //
  // Explore
  RxInt isTokoIndex = 0.obs;

  // filter

  List<bool> filterSelectedState =
      List.filled(FilterList().filters.length, false).obs;

  List<bool> filterUrutkanState =
      List.filled(FilterUrutkanList().filter_urutkans.length, false).obs;

  List<bool> filterKategoriState =
      List.filled(FilterKategoriList().filter_kategoris.length, false).obs;

  List<bool> filterLokasiState =
      List.filled(FilterLokasiList().filter_lokasis.length, false).obs;

  List<bool> filterPengirimanState =
      List.filled(FilterKategoriList().tipe_pengiriman.length, false).obs;

  List<bool> filterKondisiState =
      List.filled(FilterKategoriList().kondisi.length, false).obs;

  List<bool> filterLainnyaState =
      List.filled(FilterKategoriList().lainnya.length, false).obs;

  @override
  void onInit() {
    // Inisialisasi filterSelectedState untuk index 0 menjadi true di awal
    filterUrutkanState[1] = true;

    super.onInit();
  }
}
