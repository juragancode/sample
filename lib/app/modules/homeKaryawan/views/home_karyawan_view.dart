import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../widgets/backgroundHomePage.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/home_karyawan_controller.dart';
import '../../../widgets/gantiAkun_showModalButtomSheet.dart';

final HomeController homeController = Get.put(HomeController());

class HomeKaryawanView extends GetView<HomeKaryawanController> {
  const HomeKaryawanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return GestureDetector(
      onTap: () {
        homeController.searchFN.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFF9F9F9),
        // backgroundColor: Color.fromARGB(255, 222, 255, 191),
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
                                        'assets/icons/contoh-profil-3.png',
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
                                          "Naufal Wibawanto (Kasir)",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            color: H333333,
                                          ),
                                        ),
                                        SizedBox(height: 2.sp),
                                        Text(
                                          "Akun Karyawan",
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
                                      SizedBox(height: 8.sp),
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
                                          'assets/icons/icon-Absensi-Blue.svg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(height: 8.sp),
                                      Text(
                                        "Absensi",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: H333333,
                                        ),
                                      ),
                                      SizedBox(height: 2.sp),
                                      Text(
                                        "Isi kehadiranmu sesuai jadwal shift harian.",
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
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Flexible(
                          child: Container(
                            width: 343.w,
                            // height: 220.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0.sp),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Statistik Penjualan",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: H333333,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 16.sp,
                                          right: 16.sp,
                                          bottom: 16.sp,
                                        ),
                                        child: AspectRatio(
                                          aspectRatio: 1.7,
                                          child: LineChart(
                                            LineChartData(
                                              minX: 0,
                                              minY: 0,
                                              maxX: 5,
                                              maxY: 25,
                                              borderData: FlBorderData(
                                                show: true,
                                                border: Border.all(
                                                  color: Neutral50,
                                                  width: 1.0,
                                                ),
                                              ),
                                              gridData: FlGridData(
                                                show: true,
                                                verticalInterval: 1,
                                                horizontalInterval: 5,
                                                getDrawingHorizontalLine:
                                                    (value) {
                                                  return FlLine(
                                                    color: Neutral50,
                                                    strokeWidth: 1,
                                                  );
                                                },
                                                drawVerticalLine: true,
                                                getDrawingVerticalLine:
                                                    (value) {
                                                  return FlLine(
                                                    color: Neutral50,
                                                    strokeWidth: 1,
                                                  );
                                                },
                                              ),
                                              lineBarsData: [
                                                LineChartBarData(
                                                  spots: [
                                                    FlSpot(0, 2.5),
                                                    FlSpot(1, 5),
                                                    FlSpot(2, 10),
                                                    FlSpot(3, 14.4),
                                                    FlSpot(4, 18.5),
                                                    FlSpot(5, 21.5),
                                                  ],
                                                  color: Primary50,
                                                  isCurved: true,
                                                  dotData: FlDotData(
                                                    show: true,
                                                    getDotPainter: (spot,
                                                        percent,
                                                        barData,
                                                        index) {
                                                      final color = Primary10;
                                                      return FlDotCirclePainter(
                                                        radius: 0,
                                                        color: color,
                                                        strokeWidth: 3,
                                                        strokeColor: color,
                                                      );
                                                    },
                                                  ),
                                                  belowBarData: BarAreaData(
                                                    show: false,
                                                  ),
                                                  barWidth: 2,
                                                ),
                                              ],
                                              titlesData: FlTitlesData(
                                                show: true,
                                                topTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    showTitles: false,
                                                  ),
                                                ),
                                                rightTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    showTitles: false,
                                                  ),
                                                ),
                                                leftTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    interval: 5,
                                                    showTitles: true,
                                                    reservedSize: 25,
                                                    getTitlesWidget:
                                                        (value, meta) {
                                                      return Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 6.sp,
                                                        ),
                                                        child: Text(
                                                          value
                                                              .toInt()
                                                              .toString(),
                                                          style: TextStyle(
                                                            color: H333333,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                          textDirection:
                                                              TextDirection.rtl,
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                bottomTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    showTitles: true,
                                                    interval: 1,
                                                    reservedSize: 30,
                                                    getTitlesWidget:
                                                        (value, meta) {
                                                      String text = '';

                                                      switch (value.toInt()) {
                                                        case 0:
                                                          text = '6 Mei';
                                                          break;
                                                        case 1:
                                                          text = '11 Mei';
                                                          break;
                                                        case 2:
                                                          text = '16 Mei';
                                                          break;
                                                        case 3:
                                                          text = '21 Mei';
                                                          break;
                                                        case 4:
                                                          text = '26 Mei';
                                                          break;
                                                        case 5:
                                                          text = '1 Juni';
                                                          break;
                                                        default:
                                                          text = '';
                                                          break;
                                                      }
                                                      return Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 12.sp,
                                                          left: 10.sp,
                                                        ),
                                                        child: Text(
                                                          text,
                                                          style: TextStyle(
                                                            color: H333333,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ],
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                bottom: homeController.buttonFloat.isTrue ? 0 : -116.w,
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
