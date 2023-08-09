import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              // SizedBox(height: 46.w),

              //
              Padding(
                padding: EdgeInsets.only(
                  top: 46.w,
                  bottom: 63.w,
                  left: 16.w,
                  right: 16.w,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 32.sp,
                      width: 32.sp,
                      child: BoxOpacity(
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Secondary50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 158.w),
              Container(
                width: Get.width,
                height: 400,
                decoration: BoxDecoration(
                  color: BackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.r),
                    topRight: Radius.circular(8.r),
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
