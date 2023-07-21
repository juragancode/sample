import 'package:flutter/material.dart';
import 'package:g_a_s_app_rekadigi/app/model/filter_model.dart';
import 'package:g_a_s_app_rekadigi/app/modules/explore/views/explore_view.dart';
import 'package:g_a_s_app_rekadigi/app/modules/profil/views/profil_view.dart';
import 'package:g_a_s_app_rekadigi/app/modules/transaksi/views/transaksi_view.dart';
import 'package:g_a_s_app_rekadigi/app/widgets/Beranda.dart';
import 'package:get/get.dart';
// import '..//views/home_view.dart';

// final HomeController homeController = Get.put(HomeController());

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

  //

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

  // indeks Bottom Navigation Bar
  RxInt selectedIndexBottomNavBar = 0.obs; //sekaligus halaman awal

  RxList<dynamic> pageBottomNavBar = [
    Beranda(),
    ExploreView(),
    null,
    TransaksiView(),
    ProfilView(),
  ].obs;

  //
}
