import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../constant/colors.dart';
import '../../../model/toko_model.dart';
import '../../../modules/storeDetail/widgets/ButtonMessageStoreDetail.dart';
import '../../../modules/storeDetail/widgets/FloatingActionButtonKeranjang.dart';
import '../../../widgets/Decoration/BoxOpacity.dart';
import '../../../widgets/Decoration/Shimmer.dart';
import '../controllers/product_detail_controller.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

class ProductDetailView extends GetView<ProductDetailController> {
  @override
  Widget build(BuildContext context) {
    final Product product = Get.arguments as Product;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      backgroundColor: BackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: Get.width,
              height: 172.w,
              child: Stack(
                children: [
                  Shimmer_00(),
                  Image.network(
                    product.productImage,
                    width: Get.width,
                    height: 172.w,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: 46.w),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(4.r),
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
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(4.r),
                          onTap: () {
                            print("share");
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
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 63.w),
                Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: BackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.r),
                      topRight: Radius.circular(8.r),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 16.0.sp),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
                            child: Column(
                              children: [
                                //
                                SizedBox(height: 12.sp),
                                Container(
                                  height: 1,
                                  width: Get.width,
                                  color: D9D9D9,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.0.sp),
                          SizedBox(height: 70.sp),
                        ],
                      ),
                      ButtonMessageStoreDetail(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButtonKeranjang(),
    );
  }
}
