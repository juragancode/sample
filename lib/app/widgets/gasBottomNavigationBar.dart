import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../modules/home/controllers/home_controller.dart';

class gasBottomNavigationBar extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomAppBar(
        notchMargin: -8.sp,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showUnselectedLabels: true,
          currentIndex: controller.selectedIndexBottomNavBar.value.toInt(),
          onTap: (index) => controller.selectedIndexBottomNavBar(index),
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
                controller.selectedIndexBottomNavBar.value == 0
                    ? 'assets/icons/Home.svg'
                    : 'assets/icons/Home-Grey.svg',
                width: 30.h,
                height: 30.h,
              ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                controller.selectedIndexBottomNavBar.value == 1
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
                controller.selectedIndexBottomNavBar.value == 3
                    ? 'assets/icons/Transaksi.svg'
                    : 'assets/icons/Transaksi-Grey.svg',
                width: 30.h,
                height: 30.h,
              ),
              label: 'Transaksi',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                controller.selectedIndexBottomNavBar.value == 4
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
    );
  }
}
