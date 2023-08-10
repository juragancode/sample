import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g_a_s_app_rekadigi/app/widgets/ImageShop.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../model/toko_model.dart';
import '../../../widgets/Decoration/Shimmer.dart';
import '../controllers/store_detail_controller.dart';
import '../../../widgets/Decoration/BoxOpacity.dart';

class StoreDetailView extends GetView<StoreDetailController> {
  const StoreDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Shop shop = Get.arguments;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      backgroundColor: BackgroundColor,
      body: Stack(
        children: [
          Container(
            width: Get.width,
            height: 172.w,
            child: Stack(
              children: [
                Shimmer_00(),
                Image.network(
                  shop.bannerShop,
                  width: Get.width,
                  height: 172.w,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 46.w,
                  bottom: 63.w,
                  left: 16.w,
                  right: 16.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 32.sp,
                        width: 32.sp,
                        child: BoxOpacity(
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: Secondary50,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 32.sp,
                        width: 32.sp,
                        child: BoxOpacity(
                          child: Icon(
                            Icons.share,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  color: BackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.r),
                    topRight: Radius.circular(8.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0.sp),
                  child: Column(
                    children: [
                      //
                      Stack(
                        children: [
                          Row(
                            children: [
                              //
                              ImageShop(
                                child: Image.network(
                                  shop.imageShop,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: 11.5.w),

                              Container(
                                color: Color.fromARGB(255, 245, 170, 255),
                                width: 290.w,
                                height: 65.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(width: 3.sp),
                                        Flexible(
                                          child: Text(
                                            shop.name,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 15.5.w,
                                              fontWeight: FontWeight.w600,
                                              color: H333333,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4.sp),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.place,
                                          color: Warning50,
                                          size: 15.w,
                                        ),
                                        SizedBox(width: 4.sp),
                                        Flexible(
                                          child: Text(
                                            shop.location,
                                            // "Kalimat ini fungsinya seperti Lorem ipsum digunakan untuk test atau pengecekan pada kalimat panjang, mohon jangan dihapus. Karena bisa saja ini berguna lagi kemudian untuk dipakai di berbagai situasi seperti pengaturan overflow text.",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 10.w,
                                              fontWeight: FontWeight.w400,
                                              color: Neutral90,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4.sp),
                                    Row(
                                      children: [
                                        SizedBox(width: 1.5.w),
                                        Container(
                                          height: 14.w,
                                          width: 14.w,
                                          child: SvgPicture.asset(
                                            'assets/icons/icon-Bag-Green.svg',
                                            fit: BoxFit.contain,
                                            // height: 11.sp,
                                            // width: 11.sp,
                                          ),
                                        ),
                                        SizedBox(width: 3.5.w),
                                        Flexible(
                                          child: Text(
                                            shop.nameShop,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 10.w,
                                              fontWeight: FontWeight.w400,
                                              color: Neutral90,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 22.w,
                              width: 22.w,
                              child: SvgPicture.asset(
                                'assets/icons/icon-Message-yellow.svg',
                                fit: BoxFit.contain,
                                // height: 11.sp,
                                // width: 11.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
