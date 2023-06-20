import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.amber.shade300,
      appBar: AppBar(
        // title: Text('HomeView'),
        // centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 89.w,
            flexibleSpace: SvgPicture.asset(
              'assets/icons/Homepage-Header.svg',
              fit: BoxFit.fitWidth,
            ),
            actions: [
              Column(
                children: [
                  Row(
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
                          //            focusNode: controller.emailLupaPassFN,
                          // controller: controller.emailLupaPassC,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Ex: janedoe@email.com',
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 11.w),
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
                ],
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Obx(
                () => Text(
                  'Selected Index: ${controller.selectedIndex.value}',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Obx(
                () => Text(
                  'Selected Index: ${controller.selectedIndex.value}',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
      // body: Container(
      //   height: Get.height,
      //   width: Get.width,
      //   // color: Colors.amber.shade300,
      //   child: Stack(
      //     // alignment: AlignmentDirectional.topStart,
      //     children: [
      //       Flexible(
      //         child: Container(
      //           // height: 196
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage(
      //                 'assets/icons/Homepage-Header.png',
      //               ),
      //               fit: BoxFit.contain,
      //             ),
      //           ),
      //         ),
      //       ),
      //       Center(
      //         child: Obx(
      //           () => Text(
      //             'Selected Index: ${controller.selectedIndex.value}',
      //             style: TextStyle(fontSize: 20),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
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
      floatingActionButton: ClipOval(
        child: Container(
          width: 90.sp,
          height: 90.sp,
          // color: Color.fromARGB(255, 58, 205, 58),
          child: FloatingActionButton(
            elevation: 0.sp,
            onPressed: () {
              // Aksi yang dijalankan ketika tombol "Add" ditekan
            },
            child: SvgPicture.asset(
              'assets/icons/iconGAS-Biru.svg',
              fit: BoxFit.contain,
              width: 100.sp,
              height: 100.sp,
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
