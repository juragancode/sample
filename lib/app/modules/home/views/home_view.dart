import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g_a_s_app_rekadigi/app/constant/colors.dart';
import 'package:g_a_s_app_rekadigi/app/model/produk_promo_model.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl/intl.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

class HomeView extends GetView<HomeController> {
  final ProductPromoList productPromoList = ProductPromoList();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return GestureDetector(
      onTap: () {
        controller.searchFN.unfocus();
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        // backgroundColor: Color(0xFFF9F9F9),
        backgroundColor: Color.fromARGB(255, 234, 234,
            234), // ini cuman warna contoh, warna asli yg di atas
        appBar: AppBar(
          // title: Text('HomeView'),
          // centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(),
              Container(
                width: Get.width,
                height: 175.w,
                child: SvgPicture.asset(
                  'assets/icons/Homepage-Header.svg',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  // horizontal: 16.sp,
                  horizontal: 0,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 55.sp),
                    Container(
                      color: Colors.transparent,
                      // height: 36.sp,
                      // width: Get.width,
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
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF333333),
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
                                  contentPadding: EdgeInsets.only(
                                      right: 20.w,
                                      left: 11.34.w,
                                      // left: 40.w,
                                      top: 11.7.sp,
                                      bottom: 11.7.sp),
                                  hintStyle: TextStyle(
                                    fontSize: 12.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFA0A0A0),
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
                    Container(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 32.sp,
                                      width: 32.sp,
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-Bag-Red.svg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 2.sp),
                                    Text(
                                      "Plaza",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF333333),
                                      ),
                                    ),
                                    SizedBox(height: 2.sp),
                                    Text(
                                      "Cari berbagai kebutuhan di plaza sekitarmu.",
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 32.sp,
                                      width: 32.sp,
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-Shop-Blue.svg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 2.sp),
                                    Text(
                                      "Toko",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF333333),
                                      ),
                                    ),
                                    SizedBox(height: 2.sp),
                                    Text(
                                      "Belanja murah di toko-toko terdekat.",
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
                    SizedBox(height: 24.sp),
                    Padding(
                      padding: EdgeInsets.only(left: 16.sp),
                      child: Row(
                        children: [
                          Text(
                            "Kategori Lainnya",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: H333333,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.sp),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.sp),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Color(0xFFFFFFFF),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(14.sp),
                                  child: SvgPicture.asset(
                                    height: 46.sp,
                                    width: 46.sp,
                                    'assets/icons/Category-Icons-Fashion2.svg',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.sp),
                              Text(
                                "Fashion",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: H333333,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Color(0xFFFFFFFF),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(14.sp),
                                  child: SvgPicture.asset(
                                    height: 46.sp,
                                    width: 46.sp,
                                    'assets/icons/Category-Icons-Food2.svg',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.sp),
                              Text(
                                "GAS Food",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: H333333,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Color(0xFFFFFFFF),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(14.sp),
                                  child: SvgPicture.asset(
                                    height: 46.sp,
                                    width: 46.sp,
                                    'assets/icons/Category-Icons-Otomotif2.svg',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.sp),
                              Text(
                                "Otomotif",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: H333333,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  // color: Color.fromARGB(255, 255, 113, 113),
                                  color: Color(0xFFFFFFFF),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(14.sp),
                                  child: SvgPicture.asset(
                                    height: 46.sp,
                                    width: 46.sp,
                                    'assets/icons/Category-Icons-Lainnya2.svg',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.sp),
                              Text(
                                "Lain-lain",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: H333333,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
                    IntrinsicHeight(
                      child: Container(
                        // height: 240.0.sp,
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
                                padding: EdgeInsets.all(8.0.sp),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                      ),
                                    ),
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
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
