import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/alih_bahasa_controller.dart';

class AlihBahasaView extends GetView<AlihBahasaController> {
  final List locale = [
    {'name': 'English', 'locale': Locale('en', 'US')},
    {'name': 'Indonesia', 'locale': Locale('id', 'ID')},
  ];
  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  builddialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (builder) {
        return AlertDialog(
          title: Text("Ganti Bahasa".tr),
          content: Container(
            width: double.maxFinite,
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.all(5),
                    child: GestureDetector(
                        onTap: () {
                          updateLanguage(locale[index]['locale']);
                        },
                        child: Text(locale[index]["name"])));
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Color(0xFF216BC9),
                );
              },
              itemCount: locale.length,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 0.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: SvgPicture.asset(
                "assets/icons/Izinkan-Akses-Lokasi.svg",
                // fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 46.h),
          Text(
            'Key'.tr,
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
              'Halaman uji coba'.tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF858585),
              ),
            ),
          ),
          SizedBox(height: 18.h),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(right: 16.w, left: 16.w, bottom: 16.w),
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32.r),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF216BC9), width: 1.w),
                    backgroundColor: Colors.white,
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
                    "Ganti Bahasa".tr,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF216BC9),
                    ),
                  ),
                  onPressed: () async {
                    //
                    var locale = Locale('id', 'ID');
                    builddialog(context);
                    Get.updateLocale(locale);
                    Get.forceAppUpdate();
                  },
                ),
              ),
            ),
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
                    "Pindah Halaman".tr,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () => Get.toNamed(Routes.INTRODUCTION_SCREEN),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
