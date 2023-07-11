import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../constant/colors.dart';
import '../../../model/belanjaan_terakhir_model.dart';
import '../../../model/produk_promo_model.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/explore_controller.dart';

final HomeController homeController = Get.put(HomeController());

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

class ExploreView extends GetView<ExploreController> {
  final ProductPromoList productPromoList = ProductPromoList();
  final BelanjaanTerakhirList belanjaanTerakhirList = BelanjaanTerakhirList();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return GestureDetector(
      onTap: () {
        homeController.searchFN.unfocus();
      },
      child: DefaultTabController(
        initialIndex: controller.initialIndex.value.toInt(),
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          extendBodyBehindAppBar: true,
          backgroundColor: Color.fromARGB(255, 184, 184, 184),
          // backgroundColor: Color(0xFFF9F9F9),
          body: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              SingleChildScrollView(
                child: Stack(
                  children: [
                    SizedBox(height: Get.height - 56),
                    // BackgroundHomePage(),
                    Column(
                      children: [
                        SizedBox(height: 54.w),
                        Container(
                          color: Colors.transparent,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 36.sp,
                                  width: 223.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFFFFF),
                                    borderRadius: BorderRadius.circular(32.r),
                                  ),
                                  child: Expanded(
                                    child: TextField(
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF333333),
                                        decorationThickness: 0,
                                      ),
                                      focusNode: homeController.searchFN,
                                      controller: homeController.searchC,
                                      textInputAction: TextInputAction.done,
                                      keyboardType: TextInputType.text,
                                      autocorrect: false,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Cari di aplikasi GAS',
                                        prefixIcon: Icon(
                                          CupertinoIcons.search,
                                          color: Color(0xFFFFCA08),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                            // vertical: 2,
                                            ),
                                        suffix: SizedBox(width: 20.sp),
                                        hintStyle: TextStyle(
                                          fontSize: 12.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          color: Neutral90,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    //
                                    print("Pesan");
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 4.w),
                                    child: Container(
                                      // height: 36.sp,
                                      // width: 36.sp,
                                      child: SvgPicture.asset(
                                        'assets/icons/Button-Message.svg',
                                        fit: BoxFit.contain,
                                        width: 36.sp,
                                        height: 36.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    //
                                    print("Notifikasi");
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 4.w),
                                    child: Container(
                                      // height: 36.sp,
                                      // width: 36.sp,
                                      child: SvgPicture.asset(
                                        'assets/icons/Button-Notif.svg',
                                        fit: BoxFit.contain,
                                        height: 36.sp,
                                        width: 36.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    //
                                    print("Keranjang");
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      // right: 16.sp,
                                      left: 4.w,
                                    ),
                                    child: Container(
                                      // height: 36.sp,
                                      // width: 36.sp,
                                      child: SvgPicture.asset(
                                        'assets/icons/Button-Cart.svg',
                                        fit: BoxFit.contain,
                                        height: 36.sp,
                                        width: 36.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 14.sp),
                        TabBar(
                          labelStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                          unselectedLabelStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Neutral50,
                          ),
                          tabs: [
                            Tab(text: "Produk"),
                            Tab(text: "Toko"),
                          ],
                          isScrollable: false,
                        ),
                        SizedBox(height: 24.sp),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Produk Promo!",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: H333333,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 250.0.sp,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: productPromoList.productPromos.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 122.0.sp,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                margin: EdgeInsets.all(8.0.sp),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                    8.0.sp,
                                    8.0.sp,
                                    8.0.sp,
                                    0.sp,
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 106.0.sp,
                                        height: 90.0.sp,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0.sp),
                                            topRight: Radius.circular(4.0.sp),
                                          ),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              ProductPromoList()
                                                  .productPromos[index]
                                                  .image,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                          border: Border.all(
                                            strokeAlign:
                                                BorderSide.strokeAlignOutside,
                                            color: DEDEDE,
                                            width: 0.5.sp,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // SizedBox naik 0.5 agar
                                          SizedBox(height: 89.5.sp),
                                          Container(
                                            width: 106.0.sp,
                                            height: 18.0.sp,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(16.0.sp),
                                                bottomLeft:
                                                    Radius.circular(4.0.sp),
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
                                                  fontSize: 10.0.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 8.0.sp),
                                          Text(
                                            ProductPromoList()
                                                .productPromos[index]
                                                .name,
                                            style: TextStyle(
                                              fontSize: 12.0.sp,
                                              fontWeight: FontWeight.w400,
                                              color: H333333,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                          ),
                                          SizedBox(height: 4.0.sp),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Secondary50,
                                                size: 16.0.sp,
                                              ),
                                              SizedBox(width: 4.sp),
                                              Text(
                                                ProductPromoList()
                                                    .productPromos[index]
                                                    .rating
                                                    .toString(),
                                                style: TextStyle(
                                                  fontSize: 10.0.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Neutral90,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 8.0.sp),
                                          Text(
                                            "Rp ${f.format(ProductPromoList().productPromos[index].priceDicoret.toInt())}",
                                            style: TextStyle(
                                              fontSize: 10.0.sp,
                                              fontWeight: FontWeight.w400,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Neutral90,
                                            ),
                                          ),
                                          Text(
                                            "Rp ${f.format(productPromoList.productPromos[index].price.toInt())}",
                                            style: TextStyle(
                                              fontSize: 14.0.sp,
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
                        SizedBox(height: 24.0.sp),
                        Padding(
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
                                        fontSize: 16.sp,
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
                                  mainAxisSpacing: 9.0.sp,
                                  crossAxisSpacing: 9.0.sp,
                                  childAspectRatio: 167.0.sp / 345.0.sp,
                                  shrinkWrap: true,
                                  children: List.generate(
                                    belanjaanTerakhirList
                                        .belanjaanTerakhirs.length,
                                    (index) {
                                      return Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFFFFF),
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0.sp),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Center(
                                                    child: Stack(
                                                      children: [
                                                        Container(
                                                          height: 151.0.w,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                              color: DEDEDE,
                                                              width: 0.5.sp,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.r),
                                                            image:
                                                                DecorationImage(
                                                              image:
                                                                  NetworkImage(
                                                                BelanjaanTerakhirList()
                                                                    .belanjaanTerakhirs[
                                                                        index]
                                                                    .image,
                                                              ),
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  4.sp),
                                                          child: Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Container(
                                                              width: 32.sp,
                                                              height: 32.sp,
                                                              decoration:
                                                                  BoxDecoration(
                                                                gradient:
                                                                    LinearGradient(
                                                                  colors: [
                                                                    Color(0xFF858585)
                                                                        .withOpacity(
                                                                            0.455),
                                                                    Color(0xFF858585)
                                                                        .withOpacity(
                                                                            0.455),
                                                                    Color(0xFF858585)
                                                                        .withOpacity(
                                                                            0.65),
                                                                  ],
                                                                  stops: [
                                                                    0.455,
                                                                    0.455,
                                                                    0.65
                                                                  ],
                                                                  begin: Alignment
                                                                      .topCenter,
                                                                  end: Alignment
                                                                      .bottomCenter,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4.r),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 1.5
                                                                            .sp),
                                                                child: Icon(
                                                                  CupertinoIcons
                                                                      .heart_fill,
                                                                  size: 21.sp,
                                                                  // Icons.favorite,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(height: 8.0.sp),
                                                  Text(
                                                    BelanjaanTerakhirList()
                                                        .belanjaanTerakhirs[
                                                            index]
                                                        .name,
                                                    style: TextStyle(
                                                      fontSize: 12.0.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: H333333,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 2,
                                                  ),
                                                  SizedBox(height: 4.0.sp),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Secondary50,
                                                        size: 16.0.sp,
                                                      ),
                                                      SizedBox(width: 4.sp),
                                                      Text(
                                                        ProductPromoList()
                                                            .productPromos[
                                                                index + 1]
                                                            .rating
                                                            .toString(),
                                                        style: TextStyle(
                                                          fontSize: 10.0.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
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
                                                        size: 16.0.sp,
                                                      ),
                                                      SizedBox(width: 4.sp),
                                                      Text(
                                                        "Kota Surakarta",
                                                        style: TextStyle(
                                                          fontSize: 10.0.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Neutral90,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 4.0.sp),
                                                  Row(
                                                    children: [
                                                      SizedBox(width: 2.0.sp),
                                                      Container(
                                                        height: 14.sp,
                                                        width: 14.sp,
                                                        child: SvgPicture.asset(
                                                          'assets/icons/icon-Bag-Green.svg',
                                                          fit: BoxFit.contain,
                                                          // height: 11.sp,
                                                          // width: 11.sp,
                                                        ),
                                                      ),
                                                      SizedBox(width: 4.sp),
                                                      Text(
                                                        "Oka Toko",
                                                        style: TextStyle(
                                                          fontSize: 10.0.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Neutral90,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 8.0.sp),
                                                  Text(
                                                    "Rp ${f.format(BelanjaanTerakhirList().belanjaanTerakhirs[index].priceDicoret.toInt())}",
                                                    style: TextStyle(
                                                      fontSize: 10.0.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Neutral90,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Rp ${f.format(BelanjaanTerakhirList().belanjaanTerakhirs[index].price.toInt())}",
                                                    style: TextStyle(
                                                      fontSize: 14.0.sp,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: H333333,
                                                    ),
                                                  ),
                                                  SizedBox(height: 6.0.sp),
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
                                                borderRadius:
                                                    BorderRadius.circular(32.r),
                                                onTap: () {
                                                  //
                                                  print("tambah");
                                                },
                                                child: Ink(
                                                  // width: 149.w,
                                                  height: 32.sp,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Color(0xFF4D89D4),
                                                        Color(0xFF216BC9),
                                                      ],
                                                      begin:
                                                          Alignment.topCenter,
                                                      end: Alignment
                                                          .bottomCenter,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            32.r),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        height: 25.sp,
                                                        width: 25.sp,
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
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                        ),
                        Container(
                          height: 250.0.sp,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: productPromoList.productPromos.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 122.0.sp,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                margin: EdgeInsets.all(8.0.sp),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                    8.0.sp,
                                    8.0.sp,
                                    8.0.sp,
                                    0.sp,
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 106.0.sp,
                                        height: 90.0.sp,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0.sp),
                                            topRight: Radius.circular(4.0.sp),
                                          ),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              ProductPromoList()
                                                  .productPromos[index]
                                                  .image,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                          border: Border.all(
                                            strokeAlign:
                                                BorderSide.strokeAlignOutside,
                                            color: DEDEDE,
                                            width: 0.5.sp,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // SizedBox naik 0.5 agar
                                          SizedBox(height: 89.5.sp),
                                          Container(
                                            width: 106.0.sp,
                                            height: 18.0.sp,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(16.0.sp),
                                                bottomLeft:
                                                    Radius.circular(4.0.sp),
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
                                                  fontSize: 10.0.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 8.0.sp),
                                          Text(
                                            ProductPromoList()
                                                .productPromos[index]
                                                .name,
                                            style: TextStyle(
                                              fontSize: 12.0.sp,
                                              fontWeight: FontWeight.w400,
                                              color: H333333,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                          ),
                                          SizedBox(height: 4.0.sp),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Secondary50,
                                                size: 16.0.sp,
                                              ),
                                              SizedBox(width: 4.sp),
                                              Text(
                                                ProductPromoList()
                                                    .productPromos[index]
                                                    .rating
                                                    .toString(),
                                                style: TextStyle(
                                                  fontSize: 10.0.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Neutral90,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 8.0.sp),
                                          Text(
                                            "Rp ${f.format(ProductPromoList().productPromos[index].priceDicoret.toInt())}",
                                            style: TextStyle(
                                              fontSize: 10.0.sp,
                                              fontWeight: FontWeight.w400,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Neutral90,
                                            ),
                                          ),
                                          Text(
                                            "Rp ${f.format(productPromoList.productPromos[index].price.toInt())}",
                                            style: TextStyle(
                                              fontSize: 14.0.sp,
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
                    ),
                  ],
                ),
              ),
              Obx(
                () => AnimatedPositioned(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  bottom: homeController.buttonFloat.isTrue ? 0 : -116.w,
                  child: Container(
                    width: 231.w,
                    height: 116.w,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(360.r),
                        topRight: Radius.circular(360.r),
                      ),
                    ),
                    child: Stack(
                      alignment: AlignmentDirectional.topCenter,
                      children: [
                        Positioned.fill(
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(360.r),
                              topRight: Radius.circular(360.r),
                            ),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 2,
                                sigmaY: 2,
                              ),
                              child: Container(
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 13.sp),
                          child: Column(
                            children: [
                              Container(
                                height: 32.sp,
                                width: 32.sp,
                                child: SvgPicture.asset(
                                  'assets/icons/iconJual-Barang.svg',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                "Jual Barang",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Primary30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 54.sp,
                            left: 15.sp,
                            right: 15.sp,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 32.sp,
                                    width: 32.sp,
                                    child: SvgPicture.asset(
                                      'assets/icons/iconMesin-Kasir.svg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Text(
                                    "Mesin Kasir",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Primary30,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 32.sp,
                                    width: 32.sp,
                                    child: SvgPicture.asset(
                                      'assets/icons/iconKeranjang.svg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Text(
                                    "Keranjang",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Primary30,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Obx(
            () => BottomAppBar(
              notchMargin: -8.sp,
              shape: CircularNotchedRectangle(),
              child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                showUnselectedLabels: true,
                currentIndex: homeController.selectedIndex.value,
                onTap: (index) => homeController.changePage(index),
                selectedItemColor:
                    Color(0xFF216BC9), // Warna ikon dan teks saat terpilih
                unselectedItemColor: Color(
                    0xFFA0A0A0), // Warna ikon dan teks saat tidak terpilih
                unselectedLabelStyle: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  // color: Color(0xFF216BC9),
                ),
                selectedLabelStyle: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  // color: Color(0xFFA0A0A0),
                ),
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                items: [
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      homeController.selectedIndex.value == 0
                          ? 'assets/icons/Home.svg'
                          : 'assets/icons/Home-Grey.svg',
                      width: 30.h,
                      height: 30.h,
                    ),
                    label: 'Beranda',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      homeController.selectedIndex.value == 1
                          ? 'assets/icons/Explore.svg'
                          : 'assets/icons/Explore-Grey.svg',
                      width: 30.h,
                      height: 30.h,
                    ),
                    label: 'Telusuri',
                  ),
                  BottomNavigationBarItem(
                    icon: SizedBox.shrink(),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      homeController.selectedIndex.value == 3
                          ? 'assets/icons/Transaksi.svg'
                          : 'assets/icons/Transaksi-Grey.svg',
                      width: 30.h,
                      height: 30.h,
                    ),
                    label: 'Transaksi',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      homeController.selectedIndex.value == 4
                          ? 'assets/icons/Profil.svg'
                          : 'assets/icons/Profil-Grey.svg',
                      width: 30.h,
                      height: 30.h,
                    ),
                    label: 'Profil',
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: Obx(
            () => ClipOval(
              child: Container(
                width: 90.sp,
                height: 90.sp,
                child: FloatingActionButton(
                  elevation: 0.sp,
                  onPressed: () {
                    //
                    homeController.buttonFloat.value =
                        !homeController.buttonFloat.value;
                  },
                  child: SvgPicture.asset(
                    homeController.buttonFloat.isFalse
                        ? 'assets/icons/iconGAS-Biru.svg'
                        : 'assets/icons/iconGAS-Kuning.svg',
                    fit: BoxFit.contain,
                    width: 100.sp,
                    height: 100.sp,
                  ),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
      ),
    );
  }
}
