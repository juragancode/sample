import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../constant/colors.dart';
import '../../../model/produk_promo_model.dart';
import '../../../model/belanjaan_terakhir_model.dart';
import '../../../widgets/backgroundHomePage.dart';
// import '../../../widgets/informasiAkunHomePage.dart';
import '../../../widgets/kategoriLainnyaHomePage.dart';
import '../../../widgets/plazaTokoHomePage.dart';
import '../controllers/home_controller.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

class HomeView extends GetView<HomeController> {
  final ProductPromoList productPromoList = ProductPromoList();
  final BelanjaanTerakhirList belanjaanTerakhirList = BelanjaanTerakhirList();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return GestureDetector(
      onTap: () {
        controller.searchFN.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFF9F9F9),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              BackgroundHomePage(),
              Column(
                children: [
                  SizedBox(height: 55.sp),
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
                                    vertical: 4.sp,
                                  ),
                                  suffix: SizedBox(width: 20.sp),
                                  hintStyle: TextStyle(
                                    fontSize: 12.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFA0A0A0),
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
                  SizedBox(height: 65.sp),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Naufal Wibawanto",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF333333),
                                      ),
                                    ),
                                    SizedBox(height: 2.sp),
                                    Text(
                                      "Akun Personal",
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
                  CarouselSlider.builder(
                    itemCount: controller.imageList.length,
                    options: CarouselOptions(
                      height: 104.w,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      viewportFraction: 1.0,
                      onPageChanged:
                          (int index, CarouselPageChangedReason reason) {
                        controller.currentIndex.value = index;
                      },
                    ),
                    itemBuilder:
                        (BuildContext context, int index, int? realIndex) {
                      return Container(
                        // color: Colors.amber,
                        margin: EdgeInsets.symmetric(horizontal: 16.sp),

                        child: Image.asset(
                          controller.imageList[index],
                          fit: BoxFit.contain,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 24.sp),
                  PlazaTokoHomePage(),
                  SizedBox(height: 24.sp),
                  KategoriLainnyaHomePage(),
                  SizedBox(height: 24.sp),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Produk Promo!",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            //
                          },
                          child: Text(
                            "Lihat Semua",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Primary50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 250.0.sp,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productPromoList.productPromos.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 122.0.sp,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          margin: EdgeInsets.all(8.0.sp),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                              8.0.sp,
                              8.0.sp,
                              8.0.sp,
                              0.sp,
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  width: 106.0.sp,
                                  height: 90.0.sp,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.0.sp),
                                      topRight: Radius.circular(4.0.sp),
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        ProductPromoList()
                                            .productPromos[index]
                                            .image,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    border: Border.all(
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                      color: DEDEDE,
                                      width: 0.5.sp,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 90.0.sp),
                                    Container(
                                      width: 106.0.sp,
                                      height: 18.0.sp,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(16.0.sp),
                                          bottomLeft: Radius.circular(4.0.sp),
                                        ),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF4D89D4),
                                            Color(0xFF216BC9),
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 8.0.sp,
                                          top: 2.sp,
                                          bottom: 2.sp,
                                        ),
                                        child: Text(
                                          "Lagi Promo!",
                                          style: TextStyle(
                                            fontSize: 10.0.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8.0.sp),
                                    Text(
                                      ProductPromoList()
                                          .productPromos[index]
                                          .name,
                                      style: TextStyle(
                                        fontSize: 12.0.sp,
                                        fontWeight: FontWeight.w400,
                                        color: H333333,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                    SizedBox(height: 4.0.sp),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Secondary50,
                                          size: 16.0.sp,
                                        ),
                                        SizedBox(width: 4.sp),
                                        Text(
                                          ProductPromoList()
                                              .productPromos[index]
                                              .rating
                                              .toString(),
                                          style: TextStyle(
                                            fontSize: 10.0.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Neutral90,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8.0.sp),
                                    Text(
                                      "Rp ${f.format(ProductPromoList().productPromos[index].priceDicoret.toInt())}",
                                      style: TextStyle(
                                        fontSize: 10.0.sp,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.lineThrough,
                                        color: Neutral90,
                                      ),
                                    ),
                                    Text(
                                      "Rp ${f.format(productPromoList.productPromos[index].price.toInt())}",
                                      style: TextStyle(
                                        fontSize: 14.0.sp,
                                        fontWeight: FontWeight.w600,
                                        color: H333333,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 24.0.sp),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Belanjaan Terakhir",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            //
                          },
                          child: Text(
                            "Lihat Semua",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Primary50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 210.0.sp,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:
                          belanjaanTerakhirList.belanjaanTerakhirs.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 122.0.sp,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          margin: EdgeInsets.all(8.0.sp),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                              8.0.sp,
                              8.0.sp,
                              8.0.sp,
                              0.sp,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 106.0.sp,
                                  height: 90.0.sp,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: DEDEDE,
                                      width: 0.5.sp,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.0.sp),
                                      topRight: Radius.circular(4.0.sp),
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        BelanjaanTerakhirList()
                                            .belanjaanTerakhirs[index]
                                            .image,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8.0.sp),
                                Text(
                                  BelanjaanTerakhirList()
                                      .belanjaanTerakhirs[index]
                                      .name,
                                  style: TextStyle(
                                    fontSize: 12.0.sp,
                                    fontWeight: FontWeight.w400,
                                    color: H333333,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                                SizedBox(height: 8.0.sp),
                                Text(
                                  "Rp ${f.format(BelanjaanTerakhirList().belanjaanTerakhirs[index].priceDicoret.toInt())}",
                                  style: TextStyle(
                                    fontSize: 10.0.sp,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.lineThrough,
                                    color: Neutral90,
                                  ),
                                ),
                                Text(
                                  "Rp ${f.format(BelanjaanTerakhirList().belanjaanTerakhirs[index].price.toInt())}",
                                  style: TextStyle(
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w600,
                                    color: H333333,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Container(
                width: 231.sp,
                height: 142.sp,
                decoration: BoxDecoration(
                  color: Colors.grey.shade700.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(360.r),
                    topRight: Radius.circular(360.r),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Obx(
          () => Stack(
            // alignment: AlignmentDirectional.bottomCenter,
            children: [
              // Container(
              //   width: 231.sp,
              //   height: 142.sp,
              //   decoration: BoxDecoration(
              //     color: Colors.grey.shade700.withOpacity(0.5),
              //     borderRadius: BorderRadius.only(
              //       topLeft: Radius.circular(360.r),
              //       topRight: Radius.circular(360.r),
              //     ),
              //   ),
              // ),
              BottomAppBar(
                notchMargin: -8.sp,
                shape: CircularNotchedRectangle(),
                child: BottomNavigationBar(
                  backgroundColor: Colors.transparent,
                  showUnselectedLabels: true,
                  currentIndex: controller.selectedIndex.value,
                  onTap: (index) => controller.changePage(index),
                  selectedItemColor:
                      Color(0xFF216BC9), // Warna ikon dan teks saat terpilih
                  unselectedItemColor: Color(
                      0xFFA0A0A0), // Warna ikon dan teks saat tidak terpilih
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
                      icon: SizedBox
                          .shrink(), // Menggunakan SizedBox untuk menghilangkan icon pada item ini
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
            ],
          ),
        ),
        floatingActionButton: Obx(
          () => ClipOval(
            child: Container(
              width: 90.sp,
              height: 90.sp,
              // color: Color.fromARGB(255, 58, 205, 58),
              child: FloatingActionButton(
                elevation: 0.sp,
                onPressed: () {
                  // Aksi yang dijalankan ketika tombol "Add" ditekan
                  controller.buttonFloat.value = !controller.buttonFloat.value;
                },
                child: SvgPicture.asset(
                  controller.buttonFloat.isFalse
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
