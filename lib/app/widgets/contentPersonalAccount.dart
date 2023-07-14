import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../model/belanjaan_terakhir_model.dart';
import '../constant/colors.dart';
import '../model/produk_promo_model.dart';
import '../modules/home/controllers/home_controller.dart';

import 'ProdukPromo.dart';
import 'kategoriLainnyaHomePage.dart';
import 'plazaTokoHomePage.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

class contentPersonalAccount extends StatelessWidget {
  const contentPersonalAccount({
    super.key,
    required this.controller,
    required this.productPromoList,
    required this.belanjaanTerakhirList,
  });

  final HomeController controller;
  final ProductPromoList productPromoList;
  final BelanjaanTerakhirList belanjaanTerakhirList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: controller.imageList.length,
          options: CarouselOptions(
            height: 104.w,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            viewportFraction: 1.0,
            onPageChanged: (int index, CarouselPageChangedReason reason) {
              controller.currentIndex.value = index;
            },
          ),
          itemBuilder: (BuildContext context, int index, int? realIndex) {
            return Container(
              // color: Colors.amber,
              margin: EdgeInsets.symmetric(horizontal: 16.sp),

              child: Image.asset(
                controller.imageList[index],
                fit: BoxFit.contain,
              ),
            );
          },
        ),
        SizedBox(height: 24.sp),
        PlazaTokoHomePage(),
        SizedBox(height: 24.sp),
        KategoriLainnyaHomePage(),
        SizedBox(height: 24.sp),
        ProdukPromo(productPromoList: productPromoList),
        SizedBox(height: 24.0.sp),
        BelanjaanTerakhir(belanjaanTerakhirList: belanjaanTerakhirList),
      ],
    );
  }
}

class BelanjaanTerakhir extends StatelessWidget {
  const BelanjaanTerakhir({
    super.key,
    required this.belanjaanTerakhirList,
  });

  final BelanjaanTerakhirList belanjaanTerakhirList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 16.sp,
            right: 10.sp,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Belanjaan Terakhir",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: H333333,
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(4.r),
                onTap: () {
                  //
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.sp),
                  child: Text(
                    "Lihat Semua",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Primary50,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 210.0.sp,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 8.sp);
            },
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            scrollDirection: Axis.horizontal,
            itemCount: belanjaanTerakhirList.belanjaanTerakhirs.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 122.0.sp,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                margin: EdgeInsets.symmetric(vertical: 8.0.sp),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    8.0.sp,
                    8.0.sp,
                    8.0.sp,
                    0.sp,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 106.0.sp,
                        height: 90.0.sp,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: DEDEDE,
                            width: 0.5.sp,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.0.sp),
                            topRight: Radius.circular(4.0.sp),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              belanjaanTerakhirList
                                  .belanjaanTerakhirs[index].image,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0.sp),
                      Text(
                        belanjaanTerakhirList.belanjaanTerakhirs[index].name,
                        style: TextStyle(
                          fontSize: 12.0.sp,
                          fontWeight: FontWeight.w400,
                          color: H333333,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      SizedBox(height: 8.0.sp),
                      Text(
                        "Rp ${f.format(belanjaanTerakhirList.belanjaanTerakhirs[index].priceDicoret.toInt())}",
                        style: TextStyle(
                          fontSize: 10.0.sp,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.lineThrough,
                          color: Neutral90,
                        ),
                      ),
                      Text(
                        "Rp ${f.format(belanjaanTerakhirList.belanjaanTerakhirs[index].price.toInt())}",
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w600,
                          color: H333333,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10.sp),
      ],
    );
  }
}
