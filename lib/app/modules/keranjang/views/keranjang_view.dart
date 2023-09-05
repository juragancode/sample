import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g_a_s_app_rekadigi/app/model/keranjang_model.dart';
import 'package:g_a_s_app_rekadigi/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../constant/colors.dart';
import '../../../widgets/Decoration/BoxShadow.dart';
import '../../productDetail/controllers/product_detail_controller.dart';
import '../../productDetail/views/product_detail_view.dart';
import '../controllers/keranjang_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

final ProductDetailController produckDetailsC =
    Get.put(ProductDetailController());

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

ShopList shopList = ShopList();

List<Shop> shops = shopList.shops;

class KeranjangView extends GetView<KeranjangController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      backgroundColor: BackgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      width: Get.width,
                      height: 85.w,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow_03(),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 46.w,
                      left: 16.sp,
                      right: 16.sp,
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              ClipOval(
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Container(
                                      height: 32.sp,
                                      width: 32.sp,
                                      child: Icon(
                                        Icons.arrow_back_rounded,
                                        color: Secondary50,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 6.sp),
                              Text(
                                "Keranjang",
                                style: TextStyle(
                                  fontSize: 15.5.sp,
                                  fontWeight: FontWeight.w600,
                                  color: H333333,
                                ),
                              ),
                            ],
                          ),

                          ///
                          Align(
                            alignment: Alignment.centerRight,
                            child: ClipOval(
                              child: InkWell(
                                onTap: () {
                                  print("favorite");
                                },
                                child: Container(
                                  height: 32.sp,
                                  width: 32.sp,
                                  child: Icon(
                                    CupertinoIcons.heart_fill,
                                    size: 22.w,
                                    color: Neutral50,
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  child: Column(
                    children: [
                      SizedBox(height: 85.w),
                      Column(
                          children: ShopList().shops.asMap().entries.map(
                        (entry) {
                          final index = entry.key;
                          final shop = entry.value;
                          return Column(
                            children: [
                              SizedBox(height: 16.sp),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      true;
                                    },
                                    child: Container(
                                      height: 19.w,
                                      width: 19.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.r),
                                        gradient: true
                                            ? null
                                            : LinearGradient(
                                                colors: [
                                                  Primary30,
                                                  Primary50,
                                                ],
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                              ),
                                        border: true
                                            ? Border.all(
                                                color: Neutral50,
                                                width: 1.5.w,
                                              )
                                            : null,
                                      ),
                                      child: true
                                          ? null
                                          : Icon(
                                              Icons.check_rounded,
                                              size: 16.sp,
                                              color: Colors.white,
                                            ),
                                    ),
                                  ),
                                  SizedBox(width: 10.sp),
                                  Flexible(
                                    child: Text(
                                      shop.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.5.w,
                                        fontWeight: FontWeight.w600,
                                        color: H333333,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 19.w),
                                  SizedBox(width: 7.sp),
                                  Icon(
                                    Icons.place,
                                    color: Warning50,
                                    size: 15.w,
                                  ),
                                  SizedBox(width: 3.sp),
                                  Flexible(
                                    child: Text(
                                      shop.location,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 10.w,
                                        fontWeight: FontWeight.w400,
                                        color: Neutral90,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.sp),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: shop.product.length,
                                padding: EdgeInsets.zero,
                                itemBuilder: (context, index) {
                                  Product product = shop.product[index];
                                  RxInt jumlahPembelian =
                                      product.jumlahPembelian.obs;
                                  return Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              controller.toggleCheck(index);
                                            },
                                            child: Obx(
                                              () => Container(
                                                height: 19.w,
                                                width: 19.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.r),
                                                  gradient: controller
                                                              .checkProducts[
                                                                  index]
                                                              .value ==
                                                          true
                                                      ? null
                                                      : LinearGradient(
                                                          colors: [
                                                            Primary30,
                                                            Primary50,
                                                          ],
                                                          begin: Alignment
                                                              .topCenter,
                                                          end: Alignment
                                                              .bottomCenter,
                                                        ),
                                                  border: controller
                                                              .checkProducts[
                                                                  index]
                                                              .value ==
                                                          true
                                                      ? Border.all(
                                                          color: Neutral50,
                                                          width: 1.5.w,
                                                        )
                                                      : null,
                                                ),
                                                child: controller
                                                            .checkProducts[
                                                                index]
                                                            .value ==
                                                        true
                                                    ? null
                                                    : Icon(
                                                        Icons.check_rounded,
                                                        size: 16.sp,
                                                        color: Colors.white,
                                                      ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10.sp),
                                          Container(
                                            height: 67.w,
                                            width: 67.w,
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
                                                imageUrl: product.productImage,
                                                fit: BoxFit.cover,
                                                placeholder: (context, url) =>
                                                    Shimmer.fromColors(
                                                  baseColor:
                                                      Colors.grey.shade200,
                                                  highlightColor: Colors.white,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade100,
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
                                          SizedBox(width: 8.sp),
                                          Flexible(
                                            child: Container(
                                              // width: 240.w,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height: 41.sp,
                                                    child: Text(
                                                      product.productName,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                        fontSize: 11.5.w,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: H333333,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 8.sp),
                                                  if (product.variasi != '')
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Flexible(
                                                          // width: 240.w,
                                                          child: Neumorphic(
                                                            style:
                                                                NeumorphicStyle(
                                                              depth: -3.5.w,
                                                              shadowDarkColorEmboss:
                                                                  Colors.black
                                                                      .withOpacity(
                                                                          0.5),
                                                              shadowLightColorEmboss:
                                                                  Colors.white,
                                                              color: F0F0F0,
                                                            ),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.r),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                  horizontal:
                                                                      8.w,
                                                                  vertical:
                                                                      2.5.w,
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    SizedBox(
                                                                        width: 3
                                                                            .w),
                                                                    Flexible(
                                                                      child:
                                                                          RichText(
                                                                        text:
                                                                            TextSpan(
                                                                          style:
                                                                              DefaultTextStyle.of(context).style,
                                                                          children: <TextSpan>[
                                                                            TextSpan(
                                                                              text: 'Pilih Variasi: ',
                                                                              style: TextStyle(
                                                                                color: H333333, // Warna hitam
                                                                                fontSize: 10.w,
                                                                                fontWeight: FontWeight.w400,
                                                                              ),
                                                                            ),
                                                                            TextSpan(
                                                                              text: product.variasi,
                                                                              style: TextStyle(
                                                                                color: Neutral90,
                                                                                fontSize: 10.w,
                                                                                fontWeight: FontWeight.w400,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_arrow_down_rounded,
                                                                      color:
                                                                          Primary50,
                                                                      size:
                                                                          20.sp,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 12.sp),
                                                      ],
                                                    ),
                                                  Text(
                                                    "Rp ${f.format(product.priceDicoret.toInt())}",
                                                    style: TextStyle(
                                                      fontSize: 10.w,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Neutral90,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                    ),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  SizedBox(height: 2.sp),
                                                  Text(
                                                    "Rp ${f.format(product.price.toInt())}",
                                                    style: TextStyle(
                                                      fontSize: 11.5.w,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: H333333,
                                                    ),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4.sp),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 2.sp + 19.w),
                                            child: InkWell(
                                              onTap: () {
                                                //
                                              },
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 8.0.sp,
                                                  vertical: 4.0.sp,
                                                ),
                                                child: Text(
                                                  "Tulis Catatan",
                                                  style: TextStyle(
                                                    fontSize: 11.5.w,
                                                    fontWeight: FontWeight.w400,
                                                    color: Primary50,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Row(
                                              children: [
                                                Stack(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        ClipOval(
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            child: InkWell(
                                                              onTap: () {
                                                                produckDetailsC
                                                                    .toggleFavoriteProductInStoreDetail(
                                                                        index);
                                                              },
                                                              child: Obx(
                                                                () => Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(8.0
                                                                              .w),
                                                                  child: Icon(
                                                                    produckDetailsC.favoriteProducts[index].value ==
                                                                            true
                                                                        ? CupertinoIcons
                                                                            .heart_fill
                                                                        : CupertinoIcons
                                                                            .heart,
                                                                    size: 22.w,
                                                                    color: produckDetailsC.favoriteProducts[index].value ==
                                                                            true
                                                                        ? Favorite
                                                                        : Neutral50,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(width: 24.w),
                                                      ],
                                                    ),
                                                    ClipOval(
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        child: InkWell(
                                                          onTap: () {
                                                            controller
                                                                .showConfirmationDialog();
                                                          },
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0.w),
                                                            child: Container(
                                                              height: 19.w,
                                                              width: 19.w,
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/icons/tempat-sampah-blue.svg',
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                // SizedBox(width: 8.sp),
                                                Stack(
                                                  children: [
                                                    Neumorphic(
                                                      style: NeumorphicStyle(
                                                        boxShape:
                                                            NeumorphicBoxShape
                                                                .roundRect(
                                                          BorderRadius.circular(
                                                              32.r),
                                                        ),
                                                        depth: -8,
                                                        lightSource:
                                                            LightSource.topLeft,
                                                        shadowDarkColorEmboss:
                                                            Colors.black
                                                                .withOpacity(
                                                                    0.5),
                                                        shadowLightColorEmboss:
                                                            Colors.white,
                                                        color: F0F0F0,
                                                      ),
                                                      child: Container(
                                                        height: 24.w,
                                                        width: 80.w,
                                                        color: Colors.white,
                                                        child: Center(
                                                          child: Obx(
                                                            () => Text(
                                                              '${jumlahPembelian}', //max 4 digit
                                                              style: TextStyle(
                                                                fontSize:
                                                                    11.5.w,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: H333333,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        if (jumlahPembelian
                                                                .value >
                                                            1) {
                                                          jumlahPembelian
                                                              .value--;
                                                        }
                                                        if (jumlahPembelian
                                                                .value ==
                                                            1) {
                                                          controller
                                                              .showConfirmationDialog();
                                                        }
                                                      },
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(3.w),
                                                        child: Neumorphic(
                                                          style:
                                                              NeumorphicStyle(
                                                            boxShape:
                                                                NeumorphicBoxShape
                                                                    .roundRect(
                                                              BorderRadius
                                                                  .circular(
                                                                100.r,
                                                              ),
                                                            ),
                                                            depth: 2.w,
                                                            // lightSource: LightSource.topLeft,
                                                            shadowDarkColorEmboss:
                                                                Colors.black
                                                                    .withOpacity(
                                                                        0.5),
                                                            shadowLightColorEmboss:
                                                                Colors.black
                                                                    .withOpacity(
                                                                        0.5),
                                                            // color: F0F0F0,
                                                          ),
                                                          child: ClipOval(
                                                            child: Container(
                                                              height: 18.w,
                                                              width: 18.w,
                                                              color:
                                                                  Colors.white,
                                                              child: Center(
                                                                child: Icon(
                                                                  Icons.remove,
                                                                  size: 18.sp,
                                                                  color:
                                                                      Primary50,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      right: 0,
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          if (jumlahPembelian
                                                                  .value <
                                                              product.stok) {
                                                            jumlahPembelian
                                                                .value++;
                                                          }
                                                        },
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                            3.w,
                                                          ),
                                                          child: Neumorphic(
                                                            style:
                                                                NeumorphicStyle(
                                                              boxShape:
                                                                  NeumorphicBoxShape
                                                                      .roundRect(
                                                                BorderRadius
                                                                    .circular(
                                                                  100.r,
                                                                ),
                                                              ),
                                                              depth: 2.w,
                                                              lightSource:
                                                                  LightSource
                                                                      .topLeft,
                                                              shadowDarkColorEmboss:
                                                                  Colors.black
                                                                      .withOpacity(
                                                                          0.5),
                                                              shadowLightColorEmboss:
                                                                  Colors.black
                                                                      .withOpacity(
                                                                          0.5),
                                                            ),
                                                            child: ClipOval(
                                                              child: Container(
                                                                height: 18.w,
                                                                width: 18.w,
                                                                color: Colors
                                                                    .white,
                                                                child: Center(
                                                                  child: Icon(
                                                                    Icons.add,
                                                                    size: 18.sp,
                                                                    color:
                                                                        Primary50,
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
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 7.5.sp),
                                      //
                                    ],
                                  );
                                },
                              ),
                              SizedBox(height: 20.sp),
                              CostumDivider(),
                            ],
                          );
                        },
                      ).toList()),
                      //   },
                      // ),
                      SizedBox(height: 140.w + 20.sp),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              height: 108.w + 32.sp,
              width: Get.width,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow_00(),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  16.sp,
                  16.sp,
                  16.sp,
                  0,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 36.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Color(0xFFC9E0FF),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                SizedBox(width: 9.w),
                                SvgPicture.asset(
                                  'assets/icons/icon-Buat-Promo.svg',
                                  fit: BoxFit.cover,
                                  height: 18.04.w,
                                  width: 18.04.w,
                                ),
                                SizedBox(width: 9.w),
                                Text(
                                  "1 promo telah dipakai",
                                  style: TextStyle(
                                    fontSize: 11.5.w,
                                    fontWeight: FontWeight.w600,
                                    color: H333333,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 4.0.w),
                            child: Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: Primary50,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.sp),
                    Row(
                      children: [
                        SizedBox(width: 4.w),
                        Icon(
                          CupertinoIcons.checkmark_alt_circle_fill,
                          // Icons.check_circle,
                          color: Success50,
                          size: 17.17.w,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          "Yeay! kamu menghemat Rp 10.000",
                          style: TextStyle(
                            fontSize: 11.5.w,
                            fontWeight: FontWeight.w400,
                            color: Neutral70,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Total",
                                    style: TextStyle(
                                      fontSize: 11.5.w,
                                      fontWeight: FontWeight.w600,
                                      color: H333333,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_up_rounded,
                                    size: 20.sp,
                                    color: H333333,
                                  ),
                                ],
                              ),
                              Text(
                                "Rp 298.000",
                                style: TextStyle(
                                  fontSize: 13.5.w,
                                  fontWeight: FontWeight.w600,
                                  color: Primary50,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Material(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(8.r),
                            onTap: () {
                              Get.toNamed(Routes.BUAT_PESANAN);
                            },
                            child: Ink(
                              width: 92.w,
                              height: 37.w,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Primary30,
                                    Primary50,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: Center(
                                child: Text(
                                  "Checkout",
                                  style: TextStyle(
                                    fontSize: 11.5.w,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
