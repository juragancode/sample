import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../routes/app_pages.dart';
import '../controllers/izinkan_akses_lokasi_controller.dart';

class IzinkanAksesLokasiView extends GetView<IzinkanAksesLokasiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 60.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/Izinkan-Akses-Lokasi.svg",
                      width: 343.w,
                      // height: 437.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 46.h),
                Text(
                  'Izinkan Akses Lokasi'.tr,
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF333333),
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 27.w),
                  child: Text(
                    'Kami butuh akses lokasi untuk nentuin lokasi pengiriman & menampilkan toko-toko terdekatmu.'
                        .tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF858585),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(right: 16.w, left: 16.w, bottom: 16.w),
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF4D89D4),
                        Color(0xFF216BC9),
                      ], // Daftar warna gradient yang ingin digunakan
                      begin: Alignment.topCenter, // Posisi awal gradient
                      end: Alignment.bottomCenter, // Posisi akhir gradient
                    ),
                    borderRadius: BorderRadius.circular(32.r),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      textStyle: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.r),
                      ),
                      fixedSize: Size(343.w, 54.h),
                    ),
                    child: Text(
                      "Izinkan".tr,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () async {
                      if (await Permission.location.isPermanentlyDenied) {
                        openAppSettings();
                      } else {
                        PermissionStatus status =
                            await Permission.location.request();
                        if (status.isGranted) {
                          // Izin lokasi diberikan
                          // Lanjutkan ke halaman selanjutnya
                          Get.offAllNamed(Routes.HOME);
                        } else if (status.isDenied ||
                            status.isPermanentlyDenied) {
                          // Izin lokasi ditolak atau secara permanen ditolak
                          // Tampilkan pesan atau tindakan yang sesuai
                        }
                      }
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
