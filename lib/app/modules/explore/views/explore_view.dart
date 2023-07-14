import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../model/produk_promo_model.dart';
import '../../../model/produk_terbaru_model.dart';
import '../../../model/produk_terlaris_model.dart';
import '../../../widgets/AppBarExplore.dart';
import '../../../widgets/ProdukPromoExplore.dart';
import '../../../widgets/ProdukTerbaru.dart';
import '../../../widgets/ProdukTerlaris.dart';
import '../../../widgets/gasBottomNavigationBar.dart';
import '../../../widgets/gasFloatingActionButton_Bottom.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/explore_controller.dart';

final HomeController homeController = Get.put(HomeController());

class ExploreView extends GetView<ExploreController> {
  final ProductPromoList productPromoList = ProductPromoList();
  final ProductTerlarisList productTerlarisList = ProductTerlarisList();
  final ProductTerbaruList productTerbaruList = ProductTerbaruList();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return GestureDetector(
      onTap: () {
        homeController.searchFN.unfocus();
      },
      child: DefaultTabController(
        initialIndex: controller.tabbarInitialIndex.value.toInt(),
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          extendBodyBehindAppBar: true,
          // backgroundColor: Color.fromARGB(255, 165, 255, 121),
          backgroundColor: BackgroundColor,
          body: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              SingleChildScrollView(
                child: Stack(
                  children: [
                    SizedBox(height: Get.height - 56),
                    // BackgroundHomePage(),
                    Column(
                      children: [
                        SizedBox(height: 54.w),
                        AppBarExplore(controller: homeController),
                        SizedBox(height: 14.sp),
                        TabBar(
                          labelStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                          unselectedLabelStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Neutral50,
                          ),
                          tabs: [
                            Tab(text: "Produk"),
                            Tab(text: "Toko"),
                          ],
                          isScrollable: false,
                        ),
                        SizedBox(height: 24.sp),
                        ProdukPromoExplore(productPromoList: productPromoList),
                        SizedBox(height: 24.0.sp),
                        ProdukTerbaru(productTerbaruList: productTerbaruList),
                        SizedBox(height: 24.sp),
                        ProdukTerlaris(
                            productTerlarisList: productTerlarisList),
                        SizedBox(height: 10.sp),
                      ],
                    ),
                  ],
                ),
              ),
              gasButton(controller: homeController),
            ],
          ),
          bottomNavigationBar: gasBottomNavigationBar(
            controller: homeController,
          ),
          floatingActionButton:
              gasFloatingActionButton_Bottom(controller: homeController),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
      ),
    );
  }
}
