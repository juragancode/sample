import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g_a_s_app_rekadigi/app/model/personal_model.dart';
import 'package:g_a_s_app_rekadigi/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../../constant/colors.dart';
import '../../../widgets/Decoration/BoxShadow.dart';
import '../../../widgets/backgroundProfile.dart';
import '../controllers/home_controller.dart';

final PersonalAccountList personal = PersonalAccountList();

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
            // color: Neutral10,
          ),
          backgroundProfile(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 46.w),
              Padding(
                padding: EdgeInsets.only(left: 16.sp),
                child: Text(
                  "Personal",
                  style: TextStyle(
                    fontSize: 15.5.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 14.sp),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow_01(),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.sp),
                        child: Row(
                          children: [
                            Container(),
                            ClipOval(
                              child: InkWell(
                                onTap: () {
                                  print("foto profil di-tap");
                                },
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
                                  Get.toNamed(Routes.EDIT_PROFILE);
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
              ),
              SizedBox(height: 16.sp),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Container(
                  // height: 100,
                  decoration: BoxDecoration(
                    color: BackgroundColor,
                    borderRadius: BorderRadius.circular(8.r),
                    boxShadow: [
                      BoxShadow_01(),
                    ],
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
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Rekadigi Shop Surakarta TextPanjaang...!!!!",
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
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Emily Olivia Laura Blunt TextPanjaang...!!!!",
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
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.sp),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow_01(),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  child: Column(
                    children: [
                      SizedBox(height: 16.sp),
                      ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 24.sp);
                        },
                        padding: EdgeInsets.zero,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          PersonalAccount aksi = personal.n1[index];
                          return ActionProfilePersonal(
                            size: personal.n1[index].size,
                            title: personal.n1[index].title,
                            svg: personal.n1[index].svg,
                            onTap: () {
                              //
                              if (aksi.onTap != null) {
                                personal.n1[index].onTap!();
                              }
                            },
                          );
                        },
                      ),
                      SizedBox(height: 16.sp),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.sp),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow_01(),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  child: Column(
                    children: [
                      SizedBox(height: 8.sp),
                      ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 24.sp);
                        },
                        padding: EdgeInsets.zero,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return ActionProfilePersonal(
                            size: personal.n2[index].size,
                            title: personal.n2[index].title,
                            svg: personal.n2[index].svg,
                            onTap: () {
                              //
                            },
                          );
                        },
                      ),
                      SizedBox(height: 8.sp),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.sp),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow_01(),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  child: Column(
                    children: [
                      SizedBox(height: 8.sp),
                      ActionProfilePersonal(
                        size: 20,
                        title: "Keluar",
                        svg: "assets/icons/Personal/Keluar.svg",
                        onTap: () {
                          //
                        },
                      ),
                      SizedBox(height: 8.sp),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 44.sp),
            ],
          ),
        ],
      ),
    );
  }
}

class ActionProfilePersonal extends StatelessWidget {
  const ActionProfilePersonal({
    super.key,
    required this.title,
    required this.onTap,
    required this.svg,
    required this.size,
  });

  final String title;
  final Function() onTap;
  final String svg;
  final int size;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        // splashColor: Primary50.withOpacity(0.1),
        // highlightColor: Primary50.withOpacity(0.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // color: Colors.amberAccent,
              width: Get.width - 32.sp - 20.w - 8.w,
              child: Row(
                children: [
                  Container(
                    // color: Colors.amber,
                    height: 32.w,
                    width: 32.w,
                    child: Center(
                      child: SvgPicture.asset(
                        svg,
                        width: size.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Flexible(
                    child: Text(
                      title,
                      // 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ',
                      style: TextStyle(
                        fontSize: 11.5.w,
                        fontWeight: FontWeight.w400,
                        color: H333333,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.keyboard_arrow_right_rounded,
              color: Primary50,
              size: 24.sp,
            ),
          ],
        ),
      ),
    );
  }
}

// class GradientIcon extends StatelessWidget {
//   final IconData icon;
//   final double size;
//   final List<Color> gradientColors;

//   GradientIcon(
//     this.icon, {
//     required this.size,
//     required this.gradientColors,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ShaderMask(
//       shaderCallback: (Rect bounds) {
//         return LinearGradient(
//           colors: gradientColors,
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//         ).createShader(bounds);
//       },
//       child: Icon(
//         icon,
//         size: size,
//         color: Colors.white,
//       ),
//     );
//   }
// }
