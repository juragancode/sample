import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../model/belanjaan_terakhir_model.dart';
import '../../../constant/colors.dart';
import '../../../model/produk_promo_model.dart';
import '../../../widgets/AppBarHome.dart';
import '../../../widgets/backgroundHomePage.dart';
import '../../../widgets/cardGantiAkun.dart';
import '../../../widgets/contentEmployeeAccount.dart';
import '../../../widgets/contentPersonalAccount.dart';
import '../../../widgets/contentShopAccount.dart';
import '../../../widgets/gasBottomNavigationBar.dart';
import '../../../widgets/gasFloatingActionButton_Bottom.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final ProductPromoList productPromoList = ProductPromoList();
  final BelanjaanTerakhirList belanjaanTerakhirList = BelanjaanTerakhirList();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
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
            SingleChildScrollView(
              child: Stack(
                children: [
                  SizedBox(height: Get.height - 56),
                  BackgroundHomePage(),
                  Column(
                    children: [
                      SizedBox(height: 54.w),
                      AppBarHome(controller: controller),
                      SizedBox(height: 63.w),
                      cardGantiAkun(),
                      SizedBox(height: 12.sp),
                      Obx(
                        () => AnimatedSwitcher(
                          duration: Duration(milliseconds: 300),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            return SlideTransition(
                              position: Tween<Offset>(
                                begin: Offset(0.0, 1.0),
                                end: Offset(0.0, 0.0),
                              ).animate(animation),
                              child: child,
                            );
                          },
                          child: _buildAccountContent(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            gasButton(controller: controller),
          ],
        ),
        bottomNavigationBar: gasBottomNavigationBar(
          controller: controller,
        ),
        floatingActionButton:
            gasFloatingActionButton_Bottom(controller: controller),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  Widget _buildAccountContent() {
    switch (controller.accountIndex.value) {
      case 0:
        return contentPersonalAccount(
          controller: controller,
          productPromoList: productPromoList,
          belanjaanTerakhirList: belanjaanTerakhirList,
        );
      case 1:
        return contentShopAccount();
      case 2:
        return contentEmployeeAccount();
      default:
        return Container();
    }
  }
}
