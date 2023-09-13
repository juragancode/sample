import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:g_a_s_app_rekadigi/app/constant/colors.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../../widgets/backgroundHomePage.dart';
import '../controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../widgets/Decoration/Shimmer.dart';
import '../../../widgets/backgroundProfile.dart';

class Profil extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: Get.height - 56,
            color: Neutral10,
          ),
          backgroundProfile(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 46.w),
                Text(
                  "Personal",
                  style: TextStyle(
                    fontSize: 15.5.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 14.sp),
                Container(
                  // height: 88.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.sp),
                        child: Row(
                          children: [
                            Container(),
                            ClipOval(
                              // borderRadius: BorderRadius.circular(4.r),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(4.r),
                                child: Ink(
                                  height: 56.w,
                                  width: 56.w,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        "https://pbs.twimg.com/media/FFx_c1yXsAkEDLa.jpg",
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) =>
                                        Shimmer.fromColors(
                                      baseColor: Colors.grey.shade200,
                                      highlightColor: Colors.white,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade100,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(4.r),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Emily Olivia Laura Blunt",
                                    style: TextStyle(
                                      fontSize: 13.5.w,
                                      fontWeight: FontWeight.w600,
                                      color: H333333,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                  SizedBox(height: 4.w),
                                  Text(
                                    "manager@emelyblunt.com",
                                    style: TextStyle(
                                      fontSize: 10.w,
                                      fontWeight: FontWeight.w400,
                                      color: Neutral90,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                  SizedBox(height: 4.w),
                                  Text(
                                    "+6281234567899",
                                    style: TextStyle(
                                      fontSize: 10.w,
                                      fontWeight: FontWeight.w400,
                                      color: Neutral90,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: ClipOval(
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                splashColor: Primary50.withOpacity(0.1),
                                highlightColor: Primary50.withOpacity(0.2),
                                onTap: () {
                                  //
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(8.sp),
                                  child: Icon(
                                    Icons.mode_edit_rounded,
                                    size: 24.sp, // ukuran icon default
                                    color: Secondary50,
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
                SizedBox(height: 16.sp),
                Container(
                  // height: 100,
                  decoration: BoxDecoration(
                    color: BackgroundColor,
                    borderRadius: BorderRadius.circular(8.r),
                  ),

                  // color: Colors.amber,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.sp, vertical: 8.sp),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 8.sp),
                          child: Container(
                            // color: Colors.pink,
                            width: (Get.width - 32.sp - 16.sp - 16.sp - 1) / 2,
                            child: Row(
                              children: [
                                Container(
                                  height: 33.w,
                                  width: 33.w,
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "assets/icons/Shop-Profile-Blue.svg",
                                      width: 20.w,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Rekadigi Shop Surakarta",
                                      style: TextStyle(
                                        fontSize: 10.w,
                                        fontWeight: FontWeight.w400,
                                        color: H333333,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                    SizedBox(height: 2.w),
                                    Text(
                                      "Akun Toko",
                                      style: TextStyle(
                                        fontSize: 8.w,
                                        fontWeight: FontWeight.w400,
                                        color: Neutral90,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        //
                        Container(
                          color: Neutral30,
                          width: 1,
                          height: 25.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.sp),
                          child: Container(
                            // color: Colors.blueAccent,
                            width: (Get.width - 32.sp - 16.sp - 16.sp - 1) / 2,
                            child: Row(
                              children: [
                                Container(
                                  // color: Colors.amber,
                                  height: 33.w,
                                  width: 33.w,
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "assets/icons/User-Profile-Blue.svg",
                                      width: 20.w,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Emily Olivia Laura Blunt",
                                      style: TextStyle(
                                        fontSize: 10.w,
                                        fontWeight: FontWeight.w400,
                                        color: H333333,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                    SizedBox(height: 2.w),
                                    Text(
                                      "Akun Karyawan",
                                      style: TextStyle(
                                        fontSize: 8.w,
                                        fontWeight: FontWeight.w400,
                                        color: Neutral90,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //
              ],
            ),
          ),
        ],
      ),
    );
  }
}
