import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../constant/colors.dart';
import '../../../model/toko_model.dart';
import '../../../widgets/Decoration/BoxShadow.dart';
import '../../../widgets/Decoration/Shimmer.dart';
import '../controllers/store_detail_controller.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

String formatLebihDari1000(int number) {
  if (number >= 1000000) {
    return '${(number / 1000000).toStringAsFixed(1)}M';
  } else if (number >= 1000) {
    return '${(number / 1000).toStringAsFixed(1)}K';
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
              for (Product product in shop.product)
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
                        child: Padding(
                          padding: EdgeInsets.all(8.0.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 88.0.w,
                                height: 88.0.w,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Neutral10,
                                    width: 0.5,
                                    strokeAlign: BorderSide.strokeAlignOutside,
                                  ),
                                  borderRadius: BorderRadius.circular(4.r),
                                ),
                                child: Stack(
                                  children: [
                                    Shimmer_01(),
                                    Container(
                                      width: 88.0.w,
                                      height: 88.0.w,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(4.r),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              product.productImage),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 34.5.w,
                                      child: Text(
                                        product.productName,
                                        style: TextStyle(
                                          fontSize: 11.5.w,
                                          fontWeight: FontWeight.w400,
                                          color: H333333,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      ),
                                    ),
                                    // SizedBox(height: 2.0.sp),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star_rate_rounded,
                                          color: Secondary50,
                                          size: 15.5.w,
                                        ),
                                        SizedBox(width: 4.sp),
                                        Text(
                                          product.rating.toString(),
                                          style: TextStyle(
                                            fontSize: 9.5.w,
                                            fontWeight: FontWeight.w400,
                                            color: Neutral90,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 2.0.sp),
                                    Container(
                                      // color: Color.fromARGB(255, 115, 255, 171),
                                      width: 139.w,
                                      child: Row(
                                        children: [
                                          Text(
                                            'Stok: ${product.stok}',
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
                                            visible: product.terjual == 0
                                                ? false
                                                : true,
                                            child: Flexible(
                                              child: Text(
                                                'Terjual: ${formatLebihDari1000(product.terjual)}',
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
                                    SizedBox(height: 2.0.w),
                                    Container(
                                      width: 139.w,
                                      // color: Color.fromARGB(255, 255, 137, 222),
                                      child: Text(
                                        "Rp ${f.format(product.price.toInt())}",
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
              SizedBox(height: 24.sp),
            ],
          ),
        ),
      ],
    );
  }
}
