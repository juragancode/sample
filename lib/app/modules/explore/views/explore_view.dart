import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../widgets/AppBarExplore.dart';

import '../../../constant/colors.dart';
import '../../../model/produk_promo_model.dart';
import '../../../model/produk_terbaru_model.dart';
import '../../../widgets/gasBottomNavigationBar.dart';
import '../../../widgets/gasFloatingActionButton_Bottom.dart';
import '../../../widgets/ProdukPromo.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/explore_controller.dart';

final HomeController homeController = Get.put(HomeController());

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

class ExploreView extends GetView<ExploreController> {
  final ProductPromoList productPromoList = ProductPromoList();
  final ProductTerbaruList productTerbaruList = ProductTerbaruList();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return GestureDetector(
      onTap: () {
        homeController.searchFN.unfocus();
      },
      child: DefaultTabController(
        initialIndex: controller.tabbarInitialIndex.value.toInt(),
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          extendBodyBehindAppBar: true,
          // backgroundColor: Color.fromARGB(255, 165, 255, 121),
          backgroundColor: BackgroundColor,
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
                        AppBarExplore(controller: homeController),
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
                        ProdukPromo(productPromoList: productPromoList),
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
                                    productTerbaruList.productTerbarus.length,
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
                                                                productTerbaruList
                                                                    .productTerbarus[
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
                                                                  color: productTerbaruList
                                                                              .productTerbarus[
                                                                                  index]
                                                                              .favorite ==
                                                                          false
                                                                      ? Colors
                                                                          .white
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
                                                  Text(
                                                    productTerbaruList
                                                        .productTerbarus[index]
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
                                                        productTerbaruList
                                                            .productTerbarus[
                                                                index]
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
                                                        productTerbaruList
                                                            .productTerbarus[
                                                                index]
                                                            .city,
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
                                                        productTerbaruList
                                                            .productTerbarus[
                                                                index]
                                                            .shopName,
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
                                                    "Rp ${f.format(productTerbaruList.productTerbarus[index].priceDicoret.toInt())}",
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
                                                    "Rp ${f.format(productTerbaruList.productTerbarus[index].price.toInt())}",
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
              gasButton(controller: homeController),
            ],
          ),
          bottomNavigationBar: gasBottomNavigationBar(
            controller: homeController,
          ),
          floatingActionButton:
              gasFloatingActionButton_Bottom(controller: homeController),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
      ),
    );
  }

  BoxDecoration AppBar_BoxDecoration() {
    return BoxDecoration(
      color: Color(0xFFFFFFFF),
      borderRadius: BorderRadius.circular(32.r),
      border: Border.all(
        strokeAlign: BorderSide.strokeAlignInside,
        // style: BorderStyle.none,
        width: 1.sp,
        color: Neutral10,
      ),
    );
  }
}
