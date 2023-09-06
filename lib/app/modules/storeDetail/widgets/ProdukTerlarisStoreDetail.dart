import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g_a_s_app_rekadigi/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

import '../../../constant/colors.dart';
import '../../../model/toko_model.dart';
import '../../../widgets/Decoration/BoxShadow.dart';
import '../../../widgets/Decoration/Shimmer.dart';
import '../controllers/store_detail_controller.dart';

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

class ProdukTerlarisStoreDetail extends GetView<StoreDetailController> {
  @override
  Widget build(BuildContext context) {
    final Shop shop = Get.arguments;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 16.sp,
            right: 10,
          ),
          child: Text(
            "Produk Terlaris",
            style: TextStyle(
              fontSize: 15.5.w,
              fontWeight: FontWeight.w600,
              color: H333333,
            ),
          ),
        ),
        SizedBox(height: 8.sp),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          child: Column(
            children: [
              for (int index = 0; index < shop.product.length; index++)
                Padding(
                  padding: EdgeInsets.only(bottom: 12.sp),
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
                              Product selectedProduct = shop.product[index];

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
                              padding: EdgeInsets.all(8.0.w),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {
                                        Product selectedProduct =
                                            shop.product[index];
                                        Get.toNamed(
                                          Routes.PRODUCT_DETAIL,
                                          arguments: {
                                            'product': selectedProduct,
                                            'index': index,
                                            'shop': shop,
                                          },
                                        );
                                      },
                                      borderRadius: BorderRadius.circular(4.r),
                                      child: Ink(
                                        height: Get.width / 4,
                                        width: Get.width / 4,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.r),
                                          border: Border.all(
                                            color: Neutral10,
                                            width: 0.5,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(4.r),
                                          child: CachedNetworkImage(
                                            imageUrl: shop
                                                .product[index].productImage,
                                            fit: BoxFit.cover,
                                            placeholder: (context, url) =>
                                                Shimmer.fromColors(
                                              baseColor: Colors.grey.shade200,
                                              highlightColor: Colors.white,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade100,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(4.r),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 34.5.w,
                                          child: Text(
                                            shop.product[index].productName,
                                            style: TextStyle(
                                              fontSize: 11.5.w,
                                              fontWeight: FontWeight.w400,
                                              color: H333333,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                          ),
                                        ),
                                        SizedBox(height: 2.0.sp),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star_rate_rounded,
                                              color: Secondary50,
                                              size: 15.5.w,
                                            ),
                                            SizedBox(width: 6.sp),
                                            Text(
                                              shop.product[index].rating
                                                  .toString(),
                                              style: TextStyle(
                                                fontSize: 9.5.w,
                                                fontWeight: FontWeight.w400,
                                                color: Neutral90,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 4.0.sp),
                                        Container(
                                          // color: Color.fromARGB(
                                          //     255, 115, 255, 171),
                                          width: Get.width / 2.8,
                                          child: Row(
                                            children: [
                                              Text(
                                                'Stok: ${shop.product[index].stok}',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 9.5.w,
                                                  fontWeight: FontWeight.w400,
                                                  color: Neutral90,
                                                ),
                                              ),
                                              Flexible(
                                                child: Visibility(
                                                  visible: shop.product[index]
                                                          .terjual !=
                                                      0,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      SizedBox(width: 6.w),
                                                      Text(
                                                        '|',
                                                        style: TextStyle(
                                                          fontSize: 9.5.w,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Neutral90,
                                                        ),
                                                      ),
                                                      SizedBox(width: 6.w),
                                                      Flexible(
                                                        child: Text(
                                                          'Terjual: ${formatLebihDari1000(shop.product[index].terjual)}',
                                                          // "dtgretr ewgfdsgfd dfgfdgfd dfgdfg",
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: TextStyle(
                                                            fontSize: 9.5.w,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Neutral90,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 2.0.w),
                                        Container(
                                          // color: Colors.amber,
                                          width: Get.width / 2.7,
                                          // color: Color.fromARGB(255, 255, 137, 222),
                                          child: Text(
                                            "Rp ${f.format(shop.product[index].price.toInt())}",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 13.5.w,
                                              fontWeight: FontWeight.w600,
                                              color: H333333,
                                            ),
                                          ),
                                        ),
                                      ],
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
                              width: 90.w,
                              height: 29.w,
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
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/iconKeranjang.svg',
                                      color: Colors.white,
                                      width: 22.w,
                                      height: 22.w,
                                    ),
                                    SizedBox(width: 2.sp),
                                    Text(
                                      "Tambah",
                                      style: TextStyle(
                                        fontSize: 9.5.w,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 3.sp),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
