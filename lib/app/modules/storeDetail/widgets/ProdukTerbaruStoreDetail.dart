import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g_a_s_app_rekadigi/app/modules/productDetail/controllers/product_detail_controller.dart';
import 'package:g_a_s_app_rekadigi/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../constant/colors.dart';
import '../../../model/toko_model.dart';
import '../controllers/store_detail_controller.dart';
import '../../../widgets/Decoration/BoxOpacity.dart';
import '../../../widgets/Decoration/BoxShadow.dart';
import '../../../widgets/Decoration/Shimmer.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

String formatLebihDari1000(int number) {
  if (number >= 1000000) {
    return '${(number / 1000000).toStringAsFixed(1)} JT';
  } else if (number >= 1000) {
    return '${(number / 1000).toStringAsFixed(1)} RB+';
  } else {
    return number.toString();
  }
}

final ProductDetailController productC = Get.put(ProductDetailController());

class ProdukTerbaruStoreDetail extends GetView<StoreDetailController> {
  @override
  Widget build(BuildContext context) {
    final Shop shop = Get.arguments;
    List<dynamic> product = shop.product;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 16.sp,
            right: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Produk Terbaru",
                style: TextStyle(
                  fontSize: 15.5.w,
                  fontWeight: FontWeight.w600,
                  color: H333333,
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(4.r),
                  onTap: () {
                    //
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.sp),
                    child: Text(
                      "Lihat Semua",
                      style: TextStyle(
                        fontSize: 13.5.w,
                        fontWeight: FontWeight.w600,
                        color: Primary50,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 340.0.w.spMax,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 8.sp);
            },
            padding: EdgeInsets.fromLTRB(
              16.sp,
              8.sp,
              16.sp,
              24.sp,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: product.length,
            itemBuilder: (context, index) {
              Product selectedProduct = shop.product[index];
              return SizedBox(
                width: 170.0.w,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow_02(),
                        ],
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(
                              Routes.PRODUCT_DETAIL,
                              arguments: {
                                'product': selectedProduct,
                                'index': index,
                                'shop': shop,
                              },
                            );
                          },
                          borderRadius: BorderRadius.circular(8.r),
                          child: Padding(
                            padding: EdgeInsets.all(8.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 151.0.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Neutral10,
                                          width: 0.5,
                                          strokeAlign:
                                              BorderSide.strokeAlignOutside,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(4.r),
                                      ),
                                      child: Stack(
                                        children: [
                                          Shimmer_01(),
                                          Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                              onDoubleTap: () {
                                                productC
                                                    .toggleFavoriteProductInStoreDetail(
                                                        index);
                                              },
                                              onTap: () {
                                                Get.toNamed(
                                                  Routes.PRODUCT_DETAIL,
                                                  arguments: {
                                                    'product': selectedProduct,
                                                    'index': index,
                                                    'shop': shop,
                                                  },
                                                );
                                              },
                                              borderRadius:
                                                  BorderRadius.circular(4.r),
                                              child: Ink(
                                                decoration: BoxDecoration(
                                                  color: Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.r),
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      product[index]
                                                          .productImage,
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(4.w),
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: Material(
                                          color: Colors.transparent,
                                          child: Obx(
                                            () => InkWell(
                                              borderRadius:
                                                  BorderRadius.circular(4.r),
                                              onTap: () {
                                                //
                                                productC
                                                    .toggleFavoriteProductInStoreDetail(
                                                        index);
                                              },
                                              child: Container(
                                                width: 32.w,
                                                height: 32.w,
                                                child: BoxOpacity(
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 3.w),
                                                    child: Icon(
                                                      CupertinoIcons.heart_fill,
                                                      size: 22.w,
                                                      // Icons.favorite,
                                                      color: productC
                                                              .favoriteProducts[
                                                                  index]
                                                              .value
                                                          ? Favorite
                                                          : Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.0.sp),
                                Container(
                                  // color: Colors.amber,
                                  height: 34.5.w,
                                  child: Text(
                                    product[index].productName,
                                    style: TextStyle(
                                      fontSize: 11.5.w,
                                      fontWeight: FontWeight.w400,
                                      color: H333333,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                SizedBox(height: 4.0.sp),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star_rate_rounded,
                                      color: Secondary50,
                                      size: 15.5.w,
                                    ),
                                    SizedBox(width: 4.sp),
                                    Text(
                                      product[index].rating.toString(),
                                      style: TextStyle(
                                        fontSize: 9.5.w,
                                        fontWeight: FontWeight.w400,
                                        color: Neutral90,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.0.sp),
                                Container(
                                  height: 14.5.w,
                                  child: Row(
                                    children: [
                                      Text(
                                        'Stok: ${product[index].stok}',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 9.5.w,
                                          fontWeight: FontWeight.w400,
                                          color: Neutral90,
                                        ),
                                      ),
                                      SizedBox(width: 6.w),
                                      Text(
                                        '|',
                                        style: TextStyle(
                                          fontSize: 9.5.w,
                                          fontWeight: FontWeight.w400,
                                          color: Neutral90,
                                        ),
                                      ),
                                      SizedBox(width: 6.w),
                                      Visibility(
                                        visible: product[index].terjual == 0
                                            ? false
                                            : true,
                                        child: Flexible(
                                          child: Text(
                                            'Terjual: ${formatLebihDari1000(product[index].terjual)}',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 9.5.w,
                                              fontWeight: FontWeight.w400,
                                              color: Neutral90,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 6.0.w),
                                Text(
                                  "Rp ${f.format(product[index].price.toInt())}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 13.5.w,
                                    fontWeight: FontWeight.w600,
                                    color: H333333,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8.sp,
                      left: 8.sp,
                      right: 8.sp,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(32.r),
                          onTap: () {
                            //
                            print("tambah");
                          },
                          child: Ink(
                            // width: 149.w,
                            height: 31.w,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF4D89D4),
                                  Color(0xFF216BC9),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(32.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 25.w,
                                  width: 25.w,
                                  child: SvgPicture.asset(
                                    'assets/icons/iconKeranjang.svg',
                                    color: Colors.white,
                                    fit: BoxFit.contain,
                                    // height: 11.sp,
                                    // width: 11.sp,
                                  ),
                                ),
                                // SizedBox(width: 4.sp),
                                Text(
                                  "Tambah",
                                  style: TextStyle(
                                    fontSize: 11.5.w,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
