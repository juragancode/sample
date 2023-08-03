import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../constant/colors.dart';
import '../model/produk_terbaru_model.dart';
import 'BoxShadow.dart';
import 'Shimmer.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

class ProdukTerbaru extends StatelessWidget {
  final ProductTerbaruList productTerbaruList = ProductTerbaruList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: Container(
        // color: Colors.amber,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Produk Terbaru!",
                  style: TextStyle(
                    fontSize: 15.5.w,
                    fontWeight: FontWeight.w600,
                    color: H333333,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0.sp),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              crossAxisCount: 2,
              mainAxisSpacing: 9.0.sp, // aslinya di figma 8
              crossAxisSpacing: 9.0.sp,
              childAspectRatio: 167.0.w / 345.0.w,
              shrinkWrap: true,
              children: List.generate(
                productTerbaruList.productTerbarus.length,
                (index) {
                  return Stack(
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
                          padding: EdgeInsets.all(8.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 151.0.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: DEDEDE,
                                          width: 0.5.sp,
                                          strokeAlign:
                                              BorderSide.strokeAlignOutside,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(4.r),
                                      ),
                                      child: Stack(
                                        children: [
                                          Shimmer_01(),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(4.r),
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  productTerbaruList
                                                      .productTerbarus[index]
                                                      .image,
                                                ),
                                                fit: BoxFit.cover,
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
                                        child: Container(
                                          width: 31.w,
                                          height: 31.w,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFF858585)
                                                    .withOpacity(0.455),
                                                Color(0xFF858585)
                                                    .withOpacity(0.455),
                                                Color(0xFF858585)
                                                    .withOpacity(0.65),
                                              ],
                                              stops: [0.455, 0.455, 0.65],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(4.r),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(top: 1.3.w),
                                            child: Icon(
                                              CupertinoIcons.heart_fill,
                                              size: 21.w,
                                              // Icons.favorite,
                                              color: productTerbaruList
                                                          .productTerbarus[
                                                              index]
                                                          .favorite ==
                                                      false
                                                  ? Colors.white
                                                  : Favorite,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 8.0.sp),
                              Container(
                                // color: Colors.amber,
                                height: 34.5.w,
                                child: Text(
                                  productTerbaruList
                                      .productTerbarus[index].name,
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
                                    Icons.star,
                                    color: Secondary50,
                                    size: 15.w,
                                  ),
                                  SizedBox(width: 4.sp),
                                  Text(
                                    productTerbaruList
                                        .productTerbarus[index].rating
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
                              Row(
                                children: [
                                  Icon(
                                    Icons.place,
                                    color: Warning50,
                                    size: 15.w,
                                  ),
                                  SizedBox(width: 4.sp),
                                  Text(
                                    productTerbaruList
                                        .productTerbarus[index].city,
                                    style: TextStyle(
                                      fontSize: 9.5.w,
                                      fontWeight: FontWeight.w400,
                                      color: Neutral90,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4.0.sp),
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
                                  SizedBox(width: 3.w),
                                  Container(
                                    width: 133.w,
                                    // color: Colors.amber,
                                    child: Text(
                                      productTerbaruList
                                          .productTerbarus[index].shopName,
                                      // "aaaa sdddd ddddd  ddsfsdfsd sdfsdfds dsfdsfdsf sdfdsfsdf sddfsdfsdf sdfdsf",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 9.5.w,
                                        fontWeight: FontWeight.w400,
                                        color: Neutral90,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.0.sp),
                              Text(
                                "Rp ${f.format(productTerbaruList.productTerbarus[index].priceDicoret.toInt())}",
                                style: TextStyle(
                                  fontSize: 9.5.w,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.lineThrough,
                                  color: Neutral90,
                                ),
                              ),
                              Text(
                                "Rp ${f.format(productTerbaruList.productTerbarus[index].price.toInt())}",
                                style: TextStyle(
                                  fontSize: 13.5.w,
                                  fontWeight: FontWeight.w600,
                                  color: H333333,
                                ),
                              ),
                              SizedBox(height: 6.0.w),
                            ],
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
