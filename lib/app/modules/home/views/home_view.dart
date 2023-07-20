import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../model/belanjaan_terakhir_model.dart';
import '../../../model/produk_promo_model.dart';
import '../../../widgets/gasBottomNavigationBar.dart';
import '../../../widgets/gasFloatingActionButton_Bottom.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final ProductPromoList productPromoList = ProductPromoList();
  final BelanjaanTerakhirList belanjaanTerakhirList = BelanjaanTerakhirList();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.searchFN.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: BackgroundColor,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Obx(
              () => controller
                  .pageBottomNavBar[controller.selectedIndexBottomNavBar.value],
            ),
            gasButton(),
          ],
        ),
        bottomNavigationBar: gasBottomNavigationBar(),
        floatingActionButton: gasFloatingActionButton_Bottom(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
