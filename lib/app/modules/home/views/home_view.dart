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
        title: Text('HomeView'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 184,
                // height: 222,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icons/Homepage-Header.png',
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Center(
                child: Obx(
                  () => Text(
                    'Selected Index: ${controller.selectedIndex.value}',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomAppBar(
          notchMargin: 5.h,
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
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          // Aksi yang dijalankan ketika tombol "Add" ditekan
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF216BC9), // Warna latar belakang tombol "Add"
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, // Menempatkan tombol "Add" di tengah bawah
    );
  }
}
