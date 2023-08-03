import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../constant/colors.dart';
import '../model/produk_promo_model.dart';
import '../modules/home/controllers/home_controller.dart';
import 'BoxShadow.dart';
import 'LinearGradient.dart';
import 'Shimmer.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

class ProdukPromo extends GetView<HomeController> {
  final ProductPromoList productPromoList = ProductPromoList();
  final bool visibility;
  ProdukPromo({required this.visibility});

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
                "Produk Promo!",
                style: TextStyle(
                  fontSize: 15.5.w,
                  fontWeight: FontWeight.w600,
                  color: H333333,
                ),
              ),
              Visibility(
                visible: visibility,
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
          height: 242.0.w.spMax,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 8.sp);
            },
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            scrollDirection: Axis.horizontal,
            itemCount: productPromoList.productPromos.length,
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
                                color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4.0.sp),
                                  topRight: Radius.circular(4.0.sp),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    productPromoList.productPromos[index].image,
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
                              gradient: LinearGradient_Blue_01(),
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
                            // color: Colors.amber,
                            height: 34.5.w,
                            child: Text(
                              productPromoList.productPromos[index].name,
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
                                Icons.star_rounded,
                                color: Secondary50,
                                size: 15.w,
                              ),
                              SizedBox(width: 4.sp),
                              Text(
                                productPromoList.productPromos[index].rating
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
                          Text(
                            "Rp ${f.format(productPromoList.productPromos[index].priceDicoret.toInt())}",
                            style: TextStyle(
                              fontSize: 9.5.w,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.lineThrough,
                              color: Neutral90,
                            ),
                          ),
                          Text(
                            "Rp ${f.format(productPromoList.productPromos[index].price.toInt())}",
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
