import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../constant/colors.dart';
import '../../../model/belanjaan_terakhir_model.dart';
import '../../../model/produk_promo_model.dart';
import '../../../widgets/backgroundHomePage.dart';
import '../../../widgets/cardGantiAkun.dart';
import '../../../widgets/contentEmployeeAccount.dart';
import '../../../widgets/contentPersonalAccount.dart';
import '../../../widgets/contentShopAccount.dart';
import '../../../widgets/gasFloatingActionButton_Bottom.dart';
import '../controllers/home_controller.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

class HomeView extends GetView<HomeController> {
  final ProductPromoList productPromoList = ProductPromoList();
  final BelanjaanTerakhirList belanjaanTerakhirList = BelanjaanTerakhirList();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return GestureDetector(
      onTap: () {
        controller.searchFN.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFF9F9F9),
        // backgroundColor: Color.fromRGBO(156, 255, 145, 1), // warna untuk test
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
                      Container(
                        color: Colors.transparent,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 36.sp,
                                width: 223.w,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(32.r),
                                ),
                                child: Expanded(
                                  child: TextField(
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF333333),
                                      decorationThickness: 0,
                                    ),
                                    focusNode: controller.searchFN,
                                    controller: controller.searchC,
                                    textInputAction: TextInputAction.done,
                                    keyboardType: TextInputType.text,
                                    autocorrect: false,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Cari di aplikasi GAS',
                                      prefixIcon: Icon(
                                        CupertinoIcons.search,
                                        color: Color(0xFFFFCA08),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                          // vertical: 2,
                                          ),
                                      suffix: SizedBox(width: 20.sp),
                                      hintStyle: TextStyle(
                                        fontSize: 12.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        color: Neutral90,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  //
                                  print("Pesan");
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 4.w),
                                  child: Container(
                                    // height: 36.sp,
                                    // width: 36.sp,
                                    child: SvgPicture.asset(
                                      'assets/icons/Button-Message.svg',
                                      fit: BoxFit.contain,
                                      width: 36.sp,
                                      height: 36.sp,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  //
                                  print("Notifikasi");
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 4.w),
                                  child: Container(
                                    // height: 36.sp,
                                    // width: 36.sp,
                                    child: SvgPicture.asset(
                                      'assets/icons/Button-Notif.svg',
                                      fit: BoxFit.contain,
                                      height: 36.sp,
                                      width: 36.sp,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  //
                                  print("Keranjang");
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    // right: 16.sp,
                                    left: 4.w,
                                  ),
                                  child: Container(
                                    // height: 36.sp,
                                    // width: 36.sp,
                                    child: SvgPicture.asset(
                                      'assets/icons/Button-Cart.svg',
                                      fit: BoxFit.contain,
                                      height: 36.sp,
                                      width: 36.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 63.w),
                      cardGantiAkun(),
                      SizedBox(height: 12.sp),
                      Obx(
                        () {
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
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            gasButton(controller: controller),
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomAppBar(
            notchMargin: -8.sp,
            shape: CircularNotchedRectangle(),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              showUnselectedLabels: true,
              currentIndex: controller.selectedIndex.value,
              onTap: (index) => controller.changePage(index),
              selectedItemColor:
                  Color(0xFF216BC9), // Warna ikon dan teks saat terpilih
              unselectedItemColor:
                  Color(0xFFA0A0A0), // Warna ikon dan teks saat tidak terpilih
              unselectedLabelStyle: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                // color: Color(0xFF216BC9),
              ),
              selectedLabelStyle: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                // color: Color(0xFFA0A0A0),
              ),
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    controller.selectedIndex.value == 0
                        ? 'assets/icons/Home.svg'
                        : 'assets/icons/Home-Grey.svg',
                    width: 30.h,
                    height: 30.h,
                  ),
                  label: 'Beranda',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    controller.selectedIndex.value == 1
                        ? 'assets/icons/Explore.svg'
                        : 'assets/icons/Explore-Grey.svg',
                    width: 30.h,
                    height: 30.h,
                  ),
                  label: 'Telusuri',
                ),
                BottomNavigationBarItem(
                  icon: SizedBox.shrink(),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    controller.selectedIndex.value == 3
                        ? 'assets/icons/Transaksi.svg'
                        : 'assets/icons/Transaksi-Grey.svg',
                    width: 30.h,
                    height: 30.h,
                  ),
                  label: 'Transaksi',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    controller.selectedIndex.value == 4
                        ? 'assets/icons/Profil.svg'
                        : 'assets/icons/Profil-Grey.svg',
                    width: 30.h,
                    height: 30.h,
                  ),
                  label: 'Profil',
                ),
              ],
            ),
          ),
        ),
        floatingActionButton:
            gasFloatingActionButton_Bottom(controller: controller),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
