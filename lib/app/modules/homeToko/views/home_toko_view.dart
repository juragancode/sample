import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_toko_controller.dart';
import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:g_a_s_app_rekadigi/app/modules/home/controllers/home_controller.dart';

import '../../../constant/colors.dart';
import '../../../model/produk_promo_model.dart';
import '../../../model/belanjaan_terakhir_model.dart';
import '../../../widgets/backgroundHomePage.dart';
import '../../../widgets/kategoriLainnyaHomePage.dart';
import '../../../widgets/plazaTokoHomePage.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);
final HomeController homeController = Get.put(HomeController());

class HomeTokoView extends GetView<HomeTokoController> {
  const HomeTokoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        homeController.searchFN.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        // backgroundColor: Color(0xFFF9F9F9),
        backgroundColor: Color.fromARGB(255, 222, 255, 191),
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Stack(
                children: [
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
                                      color: H333333,
                                      decorationThickness: 0,
                                    ),
                                    focusNode: homeController.searchFN,
                                    controller: homeController.searchC,
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
                      InkWell(
                        onTap: () {
                          //
                          print("Ganti Akun");
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 16.sp),
                          width: 343.w,
                          height: 60.sp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: Color(0xFFFFFFFF),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 40.sp,
                                      width: 40.sp,
                                      child: Image.asset(
                                        'assets/icons/contoh-profil-1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(width: 8.sp),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Toko Rekadigi",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            color: H333333,
                                          ),
                                        ),
                                        SizedBox(height: 2.sp),
                                        Text(
                                          "Akun Toko",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Neutral90,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 24.sp,
                                  color: Primary50,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 12.sp),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Container(
                                width: 167.w,
                                // height: 110.sp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Color(0xFFFFFFFF),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0.sp),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 32.sp,
                                        width: 32.sp,
                                        child: SvgPicture.asset(
                                          'assets/icons/icon-Mesin-Kasir-Blue.svg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(height: 2.sp),
                                      Text(
                                        "Mesin Kasir",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: H333333,
                                        ),
                                      ),
                                      SizedBox(height: 2.sp),
                                      Text(
                                        "Hitung penjualanmu dengan mesin kasir otomatis.",
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Neutral90,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                width: 167.w,
                                // height: 110.sp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Color(0xFFFFFFFF),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0.sp),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 32.sp,
                                        width: 32.sp,
                                        child: SvgPicture.asset(
                                          'assets/icons/icon-Kelola Product-Yellow.svg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(height: 2.sp),
                                      Text(
                                        "Kelola Produk",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: H333333,
                                        ),
                                      ),
                                      SizedBox(height: 2.sp),
                                      Text(
                                        "Kelola stok, varian, dan kategori produkmu",
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Neutral90,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.sp),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Container(
                                width: 167.w,
                                // height: 110.sp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Color(0xFFFFFFFF),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.sp,
                                    vertical: 10.sp,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Pesanan Baru",
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: H333333,
                                            ),
                                          ),
                                          Container(
                                            width: 8,
                                            height: 8,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Error50,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4.sp),
                                      Text(
                                        "3",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: H333333,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                width: 167.w,
                                // height: 110.sp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Color(0xFFFFFFFF),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.sp,
                                    vertical: 10.sp,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Pesanan Selesai",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: H333333,
                                        ),
                                      ),
                                      SizedBox(height: 4.sp),
                                      Text(
                                        "15",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: H333333,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.sp),
                      Container(
                        width: 343.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: SvgPicture.asset(
                                'assets/icons/Banner-Buat-Promo.svg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.sp,
                                vertical: 10.sp,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    // color: Colors.green,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 3.81,
                                        horizontal: 10,
                                      ),
                                      child: Container(
                                        // color: Colors.amber,
                                        height: 39.71.sp,
                                        width: 39.71.sp,
                                        child: SvgPicture.asset(
                                          'assets/icons/icon-Buat-Promo.svg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  // SizedBox(width: 12.64.sp),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          width: 225.sp,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Buat Promo",
                                                style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: H333333,
                                                ),
                                              ),
                                              SizedBox(height: 4.sp),
                                              Text(
                                                "Promosikan produkmu dengan diskon menarik & kupon belanja.",
                                                style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Neutral90,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Icon(
                                          CupertinoIcons.chevron_forward,
                                          color: Primary50,
                                          size: 20.sp,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Obx(
              () => Visibility(
                visible: homeController.buttonFloat.isTrue,
                child: Container(
                  width: 231.w,
                  height: 116.w,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(360.r),
                      topRight: Radius.circular(360.r),
                    ),
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(360.r),
                            topRight: Radius.circular(360.r),
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 2,
                              sigmaY: 2,
                            ),
                            child: Container(
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 13.sp),
                        child: Column(
                          children: [
                            Container(
                              height: 32.sp,
                              width: 32.sp,
                              child: SvgPicture.asset(
                                'assets/icons/iconJual-Barang.svg',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "Jual Barang",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Primary30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 54.sp,
                          left: 15.sp,
                          right: 15.sp,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 32.sp,
                                  width: 32.sp,
                                  child: SvgPicture.asset(
                                    'assets/icons/iconMesin-Kasir.svg',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Text(
                                  "Mesin Kasir",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Primary30,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 32.sp,
                                  width: 32.sp,
                                  child: SvgPicture.asset(
                                    'assets/icons/iconKeranjang.svg',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Text(
                                  "Keranjang",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Primary30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomAppBar(
            notchMargin: -8.sp,
            shape: CircularNotchedRectangle(),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              showUnselectedLabels: true,
              currentIndex: homeController.selectedIndex.value,
              onTap: (index) => homeController.changePage(index),
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
                    homeController.selectedIndex.value == 0
                        ? 'assets/icons/Home.svg'
                        : 'assets/icons/Home-Grey.svg',
                    width: 30.h,
                    height: 30.h,
                  ),
                  label: 'Beranda',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    homeController.selectedIndex.value == 1
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
                    homeController.selectedIndex.value == 3
                        ? 'assets/icons/Transaksi.svg'
                        : 'assets/icons/Transaksi-Grey.svg',
                    width: 30.h,
                    height: 30.h,
                  ),
                  label: 'Transaksi',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    homeController.selectedIndex.value == 4
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
        floatingActionButton: Obx(
          () => ClipOval(
            child: Container(
              width: 90.sp,
              height: 90.sp,
              child: FloatingActionButton(
                elevation: 0.sp,
                onPressed: () {
                  //
                  homeController.buttonFloat.value =
                      !homeController.buttonFloat.value;
                },
                child: SvgPicture.asset(
                  homeController.buttonFloat.isFalse
                      ? 'assets/icons/iconGAS-Biru.svg'
                      : 'assets/icons/iconGAS-Kuning.svg',
                  fit: BoxFit.contain,
                  width: 100.sp,
                  height: 100.sp,
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
