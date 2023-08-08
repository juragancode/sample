import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../model/toko_model.dart';
import '../modules/home/controllers/home_controller.dart';
import 'BoxShadow.dart';
import 'FilterKosong.dart';
import 'LinearGradient.dart';
import 'Shimmer.dart';
import 'imageProduct_Toko.dart';

class ContentToko extends GetView<TokoController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.filterUrutkanState[1]
          ? Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 4.sp),
                Builder(
                  builder: (context) {
                    return Column(
                      children: ShopList().shops.map((shop) {
                        return Center(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 16.sp,
                              right: 16.sp,
                              top: 12.sp,
                            ),
                            child: Container(
                              height: 152.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: Color(0xFFFFFFFF),
                                boxShadow: [
                                  BoxShadow_01(),
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0.w),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        ClipOval(
                                          child: Container(
                                            height: 40.w,
                                            width: 40.w,
                                            decoration: BoxDecoration(
                                              // shape: BoxShape.circle,
                                              border: Border.all(
                                                strokeAlign: BorderSide
                                                    .strokeAlignOutside,
                                                color: Neutral50,
                                                width: 0.5.sp,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Shimmer_01(),
                                                Center(
                                                  child: ClipOval(
                                                    child: Image.network(
                                                      shop.imageShop,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 9.5.w),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              shop.name,
                                              style: TextStyle(
                                                fontSize: 11.5.w,
                                                fontWeight: FontWeight.w600,
                                                color: H333333,
                                              ),
                                            ),
                                            SizedBox(height: 4.sp),
                                            Container(
                                              // color: Colors.amber,
                                              width: 275.w,
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Secondary50,
                                                    size: 15.w,
                                                  ),
                                                  SizedBox(width: 4.sp),
                                                  Text(
                                                    shop.rating.toString(),
                                                    style: TextStyle(
                                                      fontSize: 10.w,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Neutral90,
                                                    ),
                                                  ),
                                                  SizedBox(width: 6.sp),
                                                  Icon(
                                                    Icons.place,
                                                    color: Warning50,
                                                    size: 15.w,
                                                  ),
                                                  SizedBox(width: 4.sp),
                                                  Text(
                                                    shop.location,
                                                    style: TextStyle(
                                                      fontSize: 10.w,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Neutral90,
                                                    ),
                                                  ),
                                                  SizedBox(width: 6.sp),
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
                                                  SizedBox(width: 4.sp),
                                                  Flexible(
                                                    child: Text(
                                                      shop.nameShop,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                        fontSize: 10.w,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Neutral90,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 16.sp),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // ListView untuk index 0
                                        Container(
                                          height: 80.w,
                                          child: Expanded(
                                            child: ListView.builder(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              scrollDirection: Axis.horizontal,
                                              shrinkWrap: true,
                                              itemCount: shop.product.length > 0
                                                  ? 1
                                                  : 0,
                                              itemBuilder: (context, index) {
                                                Product product = shop.product[
                                                    0]; // Gunakan index 0
                                                return imageProduct_Toko(
                                                  product: product,
                                                );
                                              },
                                            ),
                                          ),
                                        ),

                                        // ListView untuk index 1
                                        Container(
                                          height: 80.w,
                                          child: Expanded(
                                            child: ListView.builder(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              scrollDirection: Axis.horizontal,
                                              shrinkWrap: true,
                                              itemCount: shop.product.length > 1
                                                  ? 1
                                                  : 0,
                                              itemBuilder: (context, index) {
                                                Product product = shop.product[
                                                    1]; // Gunakan index 1
                                                return imageProduct_Toko(
                                                  product: product,
                                                );
                                              },
                                            ),
                                          ),
                                        ),

                                        // ListView untuk index 2
                                        Container(
                                          height: 80.w,
                                          child: Expanded(
                                            child: ListView.builder(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              scrollDirection: Axis.horizontal,
                                              shrinkWrap: true,
                                              itemCount: shop.product.length > 2
                                                  ? 1
                                                  : 0,
                                              itemBuilder: (context, index) {
                                                Product product = shop.product[
                                                    2]; // Gunakan index 3
                                                return imageProduct_Toko(
                                                  product: product,
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 80.w,
                                          width: 51.w,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Primary30,
                                              width: 0.5.sp,
                                            ),
                                            gradient: LinearGradient_Blue_02(),
                                            borderRadius:
                                                BorderRadius.circular(4.r),
                                          ),
                                          child: Icon(
                                            Icons.chevron_right_rounded,
                                            size: 23.w,
                                            color: Primary50,
                                            weight: 100,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    );
                  },
                ),
                SizedBox(height: 28.sp),
              ],
            )
          : FilterKosong(
              title: "Ups! nggak ada toko yang sesuai dengan filter, nih",
              subtitle: "Coba cari pakai kategori lain, ya.",
            ),
    );
  }
}
