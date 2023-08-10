import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../constant/colors.dart';
import '../model/produk_terlaris_model.dart';
import 'Decoration/BoxShadow.dart';
import 'Decoration/Shimmer.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

class ProdukTerlaris extends StatelessWidget {
  final ProductTerlarisList productTerlarisList = ProductTerlarisList();

  @override
  Widget build(BuildContext context) {
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
                "Produk Terlaris!",
                style: TextStyle(
                  fontSize: 15.5.w,
                  fontWeight: FontWeight.w600,
                  color: H333333,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 242.0.w.spMax,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 8.sp);
            },
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            scrollDirection: Axis.horizontal,
            itemCount: productTerlarisList.productTerlariss.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 122.0.w,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow_02(),
                  ],
                  borderRadius: BorderRadius.circular(8.r),
                ),
                margin: EdgeInsets.symmetric(vertical: 8.0.sp),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    8.0.w,
                    8.0.w,
                    8.0.w,
                    0,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: 106.0.w,
                        height: 90.0.w,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.0.sp),
                            topRight: Radius.circular(4.0.sp),
                          ),
                          border: Border.all(
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: DEDEDE,
                            width: 0.5.sp,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Shimmer_01(),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4.0.sp),
                                  topRight: Radius.circular(4.0.sp),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    productTerlarisList
                                        .productTerlariss[index].image,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox naik 0.5 agar
                          SizedBox(height: 89.5.w),
                          Container(
                            width: 106.0.w,
                            height: 18.0.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(16.0.sp),
                                bottomLeft: Radius.circular(4.0.sp),
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF4D89D4),
                                  Color(0xFF216BC9),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 8.0.sp,
                                top: 2.sp,
                                bottom: 2.sp,
                              ),
                              child: Text(
                                "Lagi Promo!",
                                style: TextStyle(
                                  fontSize: 9.5.w,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8.0.sp),
                          Container(
                            height: 34.5.w,
                            child: Text(
                              productTerlarisList.productTerlariss[index].name,
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
                                productTerlarisList
                                    .productTerlariss[index].rating
                                    .toString(),
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
                            child: Text(
                              "Rp ${f.format(productTerlarisList.productTerlariss[index].priceDicoret.toInt())}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 9.5.w,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.lineThrough,
                                color: Neutral90,
                              ),
                            ),
                          ),
                          Text(
                            "Rp ${f.format(productTerlarisList.productTerlariss[index].price.toInt())}",
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
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
