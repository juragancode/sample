import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g_a_s_app_rekadigi/app/constant/colors.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeView extends GetView<HomeController> {
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
        backgroundColor: Color.fromARGB(255, 136, 255, 198),
        appBar: AppBar(
          // title: Text('HomeView'),
          // centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Container(),
            // Container(
            //   child: Row(
            //           children: [
            //             Container(
            //               height: 36.sp,
            //               width: 223.w,
            //               // width: 223.sp,

            //               decoration: BoxDecoration(
            //                 color: Color(0xFFFFFFFF),
            //                 borderRadius: BorderRadius.circular(32.r),
            //               ),
            //               child: TextField(
            //                 style: TextStyle(
            //                   fontSize: 12.sp,
            //                   fontWeight: FontWeight.w400,
            //                   color: Color(0xFF333333),
            //                 ),
            //                 focusNode: controller.searchFN,
            //                 controller: controller.searchC,
            //                 textInputAction: TextInputAction.done,
            //                 keyboardType: TextInputType.emailAddress,
            //                 autocorrect: false,
            //                 decoration: InputDecoration(
            //                   border: InputBorder.none,
            //                   hintText: 'Cari di aplikasi GAS',
            //                   prefixIcon: Icon(
            //                     CupertinoIcons.search,
            //                     color: Color(0xFFFFCA08),
            //                   ),
            //                   contentPadding: EdgeInsets.only(
            //                       right: 20.w,
            //                       left: 11.34.w,
            //                       // left: 40.w,
            //                       top: 11.7.sp,
            //                       bottom: 11.7.sp),
            //                   hintStyle: TextStyle(
            //                     fontSize: 12.sp,
            //                     fontFamily: 'Poppins',
            //                     fontWeight: FontWeight.w400,
            //                     color: Color(0xFFA0A0A0),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             GestureDetector(
            //               onTap: () {
            //                 //
            //                 print("Pesan");
            //               },
            //               child: Padding(
            //                 padding: EdgeInsets.only(left: 4),
            //                 child: Container(
            //                   // height: 36.sp,
            //                   // width: 36.sp,
            //                   child: SvgPicture.asset(
            //                     'assets/icons/Button-Message.svg',
            //                     fit: BoxFit.contain,
            //                     width: 36.sp,
            //                     height: 36.sp,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             GestureDetector(
            //               onTap: () {
            //                 //
            //                 print("Notifikasi");
            //               },
            //               child: Padding(
            //                 padding: EdgeInsets.only(left: 4),
            //                 child: Container(
            //                   // height: 36.sp,
            //                   // width: 36.sp,
            //                   child: SvgPicture.asset(
            //                     'assets/icons/Button-Notif.svg',
            //                     fit: BoxFit.contain,
            //                     height: 36.sp,
            //                     width: 36.sp,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             GestureDetector(
            //               onTap: () {
            //                 //
            //                 print("Keranjang");
            //               },
            //               child: Padding(
            //                 padding: EdgeInsets.only(right: 16.sp, left: 4),
            //                 child: Container(
            //                   // height: 36.sp,
            //                   // width: 36.sp,
            //                   child: SvgPicture.asset(
            //                     'assets/icons/Button-Cart.svg',
            //                     fit: BoxFit.contain,
            //                     height: 36.sp,
            //                     width: 36.sp,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            // ),
            Container(
              width: Get.width,
              child: SvgPicture.asset(
                'assets/icons/Homepage-Header.svg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 45.sp,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        height: 36.sp,
                        width: 223.w,
                        // width: 223.sp,

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
                          keyboardType: TextInputType.emailAddress,
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
                          padding: EdgeInsets.only(left: 4),
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
                          padding: EdgeInsets.only(left: 4),
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
                          padding: EdgeInsets.only(right: 16.sp, left: 4),
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
            ),
            Positioned(
              top: 148.sp,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Container(
                  width: 343.w,
                  height: 60.sp,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Colors.white),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Positioned(
                              left: 10.sp,
                              top: 10.sp,
                              child: Row(
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Naufal Wibawanto",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF333333),
                                        ),
                                      ),
                                      SizedBox(height: 2.sp),
                                      Text(
                                        "Akun Personal",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF858585),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 24.sp,
                              color: Primary,
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

        // CustomScrollView(
        //   slivers: [
        //     SliverAppBar(
        //       backgroundColor: Colors.transparent,
        //       expandedHeight: 89.w,
        //       flexibleSpace: SvgPicture.asset(
        //         'assets/icons/Homepage-Header.svg',
        //         fit: BoxFit.fitWidth,
        //       ),
        //       actions: [
        //         Stack(
        //           alignment: AlignmentDirectional.topCenter,
        //           children: [
        //             Row(
        //               children: [
        //                 Container(
        //                   height: 36.sp,
        //                   width: 223.w,
        //                   // width: 223.sp,

        //                   decoration: BoxDecoration(
        //                     color: Color(0xFFFFFFFF),
        //                     borderRadius: BorderRadius.circular(32.r),
        //                   ),
        //                   child: TextField(
        //                     style: TextStyle(
        //                       fontSize: 12.sp,
        //                       fontWeight: FontWeight.w400,
        //                       color: Color(0xFF333333),
        //                     ),
        //                     focusNode: controller.searchFN,
        //                     controller: controller.searchC,
        //                     textInputAction: TextInputAction.done,
        //                     keyboardType: TextInputType.emailAddress,
        //                     autocorrect: false,
        //                     decoration: InputDecoration(
        //                       border: InputBorder.none,
        //                       hintText: 'Cari di aplikasi GAS',
        //                       prefixIcon: Icon(
        //                         CupertinoIcons.search,
        //                         color: Color(0xFFFFCA08),
        //                       ),
        //                       contentPadding: EdgeInsets.only(
        //                           right: 20.w,
        //                           left: 11.34.w,
        //                           // left: 40.w,
        //                           top: 11.7.sp,
        //                           bottom: 11.7.sp),
        //                       hintStyle: TextStyle(
        //                         fontSize: 12.sp,
        //                         fontFamily: 'Poppins',
        //                         fontWeight: FontWeight.w400,
        //                         color: Color(0xFFA0A0A0),
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //                 GestureDetector(
        //                   onTap: () {
        //                     //
        //                     print("Pesan");
        //                   },
        //                   child: Padding(
        //                     padding: EdgeInsets.only(left: 4),
        //                     child: Container(
        //                       // height: 36.sp,
        //                       // width: 36.sp,
        //                       child: SvgPicture.asset(
        //                         'assets/icons/Button-Message.svg',
        //                         fit: BoxFit.contain,
        //                         width: 36.sp,
        //                         height: 36.sp,
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //                 GestureDetector(
        //                   onTap: () {
        //                     //
        //                     print("Notifikasi");
        //                   },
        //                   child: Padding(
        //                     padding: EdgeInsets.only(left: 4),
        //                     child: Container(
        //                       // height: 36.sp,
        //                       // width: 36.sp,
        //                       child: SvgPicture.asset(
        //                         'assets/icons/Button-Notif.svg',
        //                         fit: BoxFit.contain,
        //                         height: 36.sp,
        //                         width: 36.sp,
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //                 GestureDetector(
        //                   onTap: () {
        //                     //
        //                     print("Keranjang");
        //                   },
        //                   child: Padding(
        //                     padding: EdgeInsets.only(right: 16.sp, left: 4),
        //                     child: Container(
        //                       // height: 36.sp,
        //                       // width: 36.sp,
        //                       child: SvgPicture.asset(
        //                         'assets/icons/Button-Cart.svg',
        //                         fit: BoxFit.contain,
        //                         height: 36.sp,
        //                         width: 36.sp,
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ],
        //     ),
        //     SliverList(
        //       delegate: SliverChildListDelegate(
        //         [
        //           CarouselSlider.builder(
        //             itemCount: controller.imageList.length,
        //             options: CarouselOptions(
        //               height: 104.w,
        //               autoPlay: true,
        //               autoPlayInterval: Duration(seconds: 5),
        //               autoPlayAnimationDuration: Duration(milliseconds: 800),
        //               autoPlayCurve: Curves.fastOutSlowIn,
        //               enableInfiniteScroll: true,
        //               viewportFraction: 1.0,
        //               onPageChanged:
        //                   (int index, CarouselPageChangedReason reason) {
        //                 controller.currentIndex.value = index;
        //               },
        //             ),
        //             itemBuilder:
        //                 (BuildContext context, int index, int? realIndex) {
        //               return Container(
        //                 // color: Colors.amber,
        //                 margin: EdgeInsets.symmetric(horizontal: 16),
        //                 child: Image.asset(
        //                   controller.imageList[index],
        //                   fit: BoxFit.contain,
        //                 ),
        //               );
        //             },
        //           ),
        //         ],
        //       ),
        //     ),
        //     SliverToBoxAdapter(
        //       child: Center(
        //         child: Obx(
        //           () => Text(
        //             'Selected Index: ${controller.selectedIndex.value}',
        //             style: TextStyle(fontSize: 20),
        //           ),
        //         ),
        //       ),
        //     ),
        //     SliverToBoxAdapter(
        //       child: Center(
        //         child: Obx(
        //           () => Text(
        //             'Selected Index: ${controller.selectedIndex.value}',
        //             style: TextStyle(fontSize: 20),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
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
