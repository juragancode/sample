import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../modules/home/controllers/home_controller.dart';
import 'checkModalBottomSheet_false.dart';
import 'checkModalBottomSheet_true.dart';

final HomeController homeController = Get.put(HomeController());

Future<dynamic> gantiAkun_showModalButtomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    // transitionAnimationController: AnimationController(vsync: this, duration: Duration(milliseconds: 500),),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(24.0.r),
      ),
    ),
    builder: (BuildContext context) {
      return Obx(
        () => Flexible(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 8.sp),
                Container(
                  width: 40.w,
                  height: 4.sp,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(32.r),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.sp),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          homeController.accountIndex.value = 1;
                        },
                        child: Material(
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
                                  SizedBox(width: 10.sp),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                              homeController.accountIndex.value == 1
                                  ? checkModalBottomSheet_true()
                                  : checkModalBottomSheet_false(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.sp),
                      GestureDetector(
                        onTap: () {
                          homeController.accountIndex.value = 2;
                        },
                        child: Material(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 40.sp,
                                    width: 40.sp,
                                    child: Image.asset(
                                      'assets/icons/contoh-profil-2.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 10.sp),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Toko Rekadigi",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF333333),
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
                              homeController.accountIndex.value == 2
                                  ? checkModalBottomSheet_true()
                                  : checkModalBottomSheet_false(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.sp),
                      GestureDetector(
                        onTap: () {
                          homeController.accountIndex.value = 3;
                          print(homeController.accountIndex.value);
                        },
                        child: Material(
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
                                  SizedBox(width: 10.sp),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Naufal Wibawanto (Kasir)",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF333333),
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
                              homeController.accountIndex.value == 3
                                  ? checkModalBottomSheet_true()
                                  : checkModalBottomSheet_false(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.sp),
                      Row(
                        children: [
                          Container(
                            height: 40.sp,
                            width: 40.sp,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Neutral30,
                                width: 1.sp,
                              ),
                            ),
                            child: Icon(
                              Icons.add,
                            ),
                          ),
                          SizedBox(width: 10.sp),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Tambah Akun",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF333333),
                                ),
                              ),
                            ],
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
      );
    },
  );
}
