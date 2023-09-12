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
          SizedBox(height: Get.height - 56),
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
                  child: Padding(
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Emily Olivia Laura Blunt Abigail Isyldur Leah Nam",
                              style: TextStyle(
                                fontSize: 13.5.w,
                                fontWeight: FontWeight.w600,
                                color: H333333,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Text(
                              "manager@emelyblunt.com",
                            ),
                            Text(
                              "+6281234567899",
                            ),
                          ],
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
