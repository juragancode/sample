import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_a_s_app_rekadigi/app/modules/productDetail/views/product_detail_view.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

import '../../../constant/colors.dart';
import '../../../model/RiwayatPesanan_model.dart';
import '../../../widgets/AppBarGAS.dart';
import '../../../widgets/Decoration/BoxShadow.dart';
import '../../../widgets/FilterKosong.dart';
import '../../../widgets/FilterTransaksi.dart';
import '../../../widgets/backgroundExplore.dart';
import '../controllers/home_controller.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

BorderStyle borderStyle = BorderStyle.solid;

RiwayatPesananList riwayatPesanan = RiwayatPesananList();
final diproses = riwayatPesanan.riwayatpesanan_
    .where((pesanan) => pesanan.status == Status.diproses)
    .toList();

final dikirim = riwayatPesanan.riwayatpesanan_
    .where((pesanan) => pesanan.status == Status.dikirim)
    .toList();

final sampaiTujuan = riwayatPesanan.riwayatpesanan_
    .where((pesanan) => pesanan.status == Status.sampaiTujuan)
    .toList();

final selesai = riwayatPesanan.riwayatpesanan_
    .where((pesanan) => pesanan.status == Status.selesai)
    .toList();

class Transaksi extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return SingleChildScrollView(
      child: Stack(
        children: [
          SizedBox(height: Get.height - 56),
          backgroundExplore(),
          Column(
            children: [
              SizedBox(height: 46.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Row(
                  children: [
                    SizedBox(width: 6.sp),
                    Text(
                      "Transaksi",
                      style: TextStyle(
                        fontSize: 15.5.sp,
                        fontWeight: FontWeight.w600,
                        color: H333333,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18.sp),
              AppBarGAS(borderStyle: borderStyle),
              SizedBox(height: 8.sp),
              FilterTransaksi(),
              Obx(
                () => AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: Offset(0.0, 1.0),
                        end: Offset(0.0, 0.0),
                      ).animate(animation),
                      child: child,
                    );
                  },
                  child: (() {
                    switch (controller.filterTransaksi.value) {
                      case 0: // Semua Riwayat
                        return riwayatPesanan.riwayatpesanan_.isEmpty
                            ? FilterKosong(
                                title: "Hmm.. belum ada transaksi",
                                subtitle:
                                    "Semua transaksimu bakalan muncul di sini.",
                              )
                            : Column(
                                children: [
                                  SizedBox(height: 16.sp),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.sp),
                                    child: Column(
                                      children: [
                                        for (int index = 0;
                                            index <
                                                riwayatPesanan
                                                    .riwayatpesanan_.length;
                                            index++)
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 12.sp),
                                            child: Stack(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFFFFFFF),
                                                    boxShadow: [
                                                      BoxShadow_02(),
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.r),
                                                  ),
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    child: InkWell(
                                                      onTap: () {},
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.r),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            8.0.w),
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  riwayatPesanan
                                                                      .riwayatpesanan_[
                                                                          index]
                                                                      .shopName,
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        13.5.w,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color:
                                                                        H333333,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  () {
                                                                    if (riwayatPesanan
                                                                            .riwayatpesanan_[
                                                                                index]
                                                                            .status ==
                                                                        Status
                                                                            .diproses) {
                                                                      return "Diproses";
                                                                    } else if (riwayatPesanan
                                                                            .riwayatpesanan_[
                                                                                index]
                                                                            .status ==
                                                                        Status
                                                                            .dikirim) {
                                                                      return "Dikirim";
                                                                    } else if (riwayatPesanan
                                                                            .riwayatpesanan_[
                                                                                index]
                                                                            .status ==
                                                                        Status
                                                                            .sampaiTujuan) {
                                                                      return "Sampai Tujuan";
                                                                    } else if (riwayatPesanan
                                                                            .riwayatpesanan_[
                                                                                index]
                                                                            .status ==
                                                                        Status
                                                                            .selesai) {
                                                                      return "Selesai";
                                                                    } else {
                                                                      return "Dibatalkan";
                                                                    }
                                                                  }(),
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        13.5.w,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color:
                                                                        H333333,
                                                                  ),
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  maxLines: 1,
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                                height: 8.sp),
                                                            CostumDivider(),
                                                            SizedBox(
                                                                height: 8.sp),
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  child:
                                                                      InkWell(
                                                                    onTap: () {
                                                                      print(
                                                                          "detail pengiriman");
                                                                    },
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.r),
                                                                    child: Ink(
                                                                      height:
                                                                          Get.width /
                                                                              5,
                                                                      width:
                                                                          Get.width /
                                                                              5,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(4.r),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Neutral10,
                                                                          width:
                                                                              0.5,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(4.r),
                                                                        child:
                                                                            CachedNetworkImage(
                                                                          imageUrl: riwayatPesanan
                                                                              .riwayatpesanan_[index]
                                                                              .image,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                          placeholder: (context, url) =>
                                                                              Shimmer.fromColors(
                                                                            baseColor:
                                                                                Colors.grey.shade200,
                                                                            highlightColor:
                                                                                Colors.white,
                                                                            child:
                                                                                Container(
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.grey.shade100,
                                                                                borderRadius: BorderRadius.all(
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
                                                                SizedBox(
                                                                    width:
                                                                        10.w),
                                                                Expanded(
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                        height:
                                                                            34.5.w,
                                                                        child:
                                                                            Text(
                                                                          riwayatPesanan
                                                                              .riwayatpesanan_[index]
                                                                              .name,
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                11.5.w,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            color:
                                                                                H333333,
                                                                          ),
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          maxLines:
                                                                              2,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                          height:
                                                                              4.0.w),
                                                                      Row(
                                                                        children: [
                                                                          Text(
                                                                            riwayatPesanan.riwayatpesanan_[index].jumlahPesanan.toString() +
                                                                                " produk",
                                                                            style:
                                                                                TextStyle(
                                                                              fontSize: 9.5.w,
                                                                              fontWeight: FontWeight.w400,
                                                                              color: Neutral90,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      SizedBox(
                                                                          height:
                                                                              2.0.sp),
                                                                      SizedBox(
                                                                          height:
                                                                              2.0.w),
                                                                      Container(
                                                                        // color: Colors.amber,
                                                                        width: Get.width /
                                                                            2.7,
                                                                        // color: Color.fromARGB(255, 255, 137, 222),
                                                                        child:
                                                                            Text(
                                                                          "Rp ${f.format(riwayatPesanan.riwayatpesanan_[index].price.toInt())}",
                                                                          maxLines:
                                                                              1,
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                13.5.w,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            color:
                                                                                H333333,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
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
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              32.r),
                                                      onTap: () {
                                                        //
                                                        print("tambah");
                                                      },
                                                      child: Ink(
                                                        // width: 64.w,
                                                        // height: 24.w,
                                                        decoration:
                                                            BoxDecoration(
                                                          // gradient:
                                                          //     LinearGradient(
                                                          //   colors: [
                                                          //     Color(0xFF4D89D4),
                                                          //     Color(0xFF216BC9),
                                                          //   ],
                                                          //   begin: Alignment
                                                          //       .topCenter,
                                                          //   end: Alignment
                                                          //       .bottomCenter,
                                                          // ),
                                                          border: Border.all(
                                                            width: 1,
                                                            color: Primary30,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            32.r,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      16.w,
                                                                  vertical:
                                                                      4.w),
                                                          child: Center(
                                                            child: Text(
                                                              "Nilai",
                                                              style: TextStyle(
                                                                fontSize: 10.w,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
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
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                      case 1: // Diproses
                        return diproses.isEmpty
                            ? FilterKosong(
                                title:
                                    "Ups! nggak ada transaksi yang sesuai dengan filter, nih",
                                subtitle: "Coba reset atau ubah filtermu, ya.",
                              )
                            : Container();
                      case 2: // Dikirim
                        return dikirim.isEmpty
                            ? FilterKosong(
                                title:
                                    "Ups! nggak ada transaksi yang sesuai dengan filter, nih",
                                subtitle: "Coba reset atau ubah filtermu, ya.",
                              )
                            : Container();
                      case 3: // Sampai Tujuan
                        return sampaiTujuan.isEmpty
                            ? FilterKosong(
                                title:
                                    "Ups! nggak ada transaksi yang sesuai dengan filter, nih",
                                subtitle: "Coba reset atau ubah filtermu, ya.",
                              )
                            : Container();
                      case 4: // Selesai
                        return selesai.isEmpty
                            ? FilterKosong(
                                title:
                                    "Ups! nggak ada transaksi yang sesuai dengan filter, nih",
                                subtitle: "Coba reset atau ubah filtermu, ya.",
                              )
                            : Container();
                      default:
                        return Container();
                    }
                  })(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
