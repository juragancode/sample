import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g_a_s_app_rekadigi/app/widgets/Decoration/BoxShadow.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

import '../controllers/lacak_controller.dart';
import '../../../model/RiwayatPesanan_model.dart';
import '../../../constant/colors.dart';
import '../../../modules/productDetail/views/product_detail_view.dart';
import '../../../widgets/PesananDibatalkan_ModalBottomSheet.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

class LacakView extends GetView<LacakController> {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = Get.arguments;

    // final List<dynamic> lacakPesanan = args['lacakPesanan'];
    final RiwayatPesanan riwayatPesanan = args['riwayatPesanan'];

    Get.lazyPut(() => LacakController);
    //

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      backgroundColor: BackgroundColor,
      body: SingleChildScrollView(
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
                            "Lacak",
                            style: TextStyle(
                              fontSize: 15.5.sp,
                              fontWeight: FontWeight.w600,
                              color: H333333,
                            ),
                          ),
                        ],
                      ),

                      ///
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
                  SizedBox(height: 16.sp),
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
                              onTap: () {},
                              borderRadius: BorderRadius.circular(8.r),
                              child: Padding(
                                padding: EdgeInsets.all(8.0.w),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.sp),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              riwayatPesanan.shopName,
                                              // "Toko toki tora tono todo baram to toronto totorotot tong tung tang ting tung",
                                              style: TextStyle(
                                                fontSize: 13.5.w,
                                                fontWeight: FontWeight.w600,
                                                color: H333333,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4.r),
                                              border: Border.all(
                                                width: 0.5,
                                                color: () {
                                                  if (riwayatPesanan.status ==
                                                      Status.diproses) {
                                                    return Neutral50;
                                                  } else if (riwayatPesanan
                                                          .status ==
                                                      Status.dikirim) {
                                                    return Primary30;
                                                  } else if (riwayatPesanan
                                                          .status ==
                                                      Status.sampaiTujuan) {
                                                    return Warning30;
                                                  } else if (riwayatPesanan
                                                          .status ==
                                                      Status.selesai) {
                                                    return Success50;
                                                  } else if (riwayatPesanan
                                                          .status ==
                                                      Status.dibatalkan) {
                                                    return Error10;
                                                  } else {
                                                    return Colors.transparent;
                                                  }
                                                }(),
                                              ),
                                              color: () {
                                                if (riwayatPesanan.status ==
                                                    Status.diproses) {
                                                  return F0F0F0;
                                                } else if (riwayatPesanan
                                                        .status ==
                                                    Status.dikirim) {
                                                  return Primary05;
                                                } else if (riwayatPesanan
                                                        .status ==
                                                    Status.sampaiTujuan) {
                                                  return Warning05;
                                                } else if (riwayatPesanan
                                                        .status ==
                                                    Status.selesai) {
                                                  return Success05.withOpacity(
                                                      0.5);
                                                } else if (riwayatPesanan
                                                        .status ==
                                                    Status.dibatalkan) {
                                                  return Error05;
                                                } else {
                                                  return Colors.transparent;
                                                }
                                              }(),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.w,
                                                  vertical: 3.w),
                                              child: Text(
                                                () {
                                                  if (riwayatPesanan.status ==
                                                      Status.diproses) {
                                                    return "Diproses";
                                                  } else if (riwayatPesanan
                                                          .status ==
                                                      Status.dikirim) {
                                                    return "Dikirim";
                                                  } else if (riwayatPesanan
                                                          .status ==
                                                      Status.sampaiTujuan) {
                                                    return "Sampai Tujuan";
                                                  } else if (riwayatPesanan
                                                          .status ==
                                                      Status.selesai) {
                                                    return "Selesai";
                                                  } else if (riwayatPesanan
                                                          .status ==
                                                      Status.dibatalkan) {
                                                    return "Dibatalkan";
                                                  } else {
                                                    return "";
                                                  }
                                                }(),
                                                style: TextStyle(
                                                  fontSize: 10.w,
                                                  fontWeight: FontWeight.w400,
                                                  color: () {
                                                    if (riwayatPesanan.status ==
                                                            Status.diproses ||
                                                        riwayatPesanan.status ==
                                                            Status.dikirim) {
                                                      return Primary30;
                                                    } else if (riwayatPesanan
                                                            .status ==
                                                        Status.sampaiTujuan) {
                                                      return Warning50;
                                                    } else if (riwayatPesanan
                                                            .status ==
                                                        Status.selesai) {
                                                      return Success90;
                                                    } else if (riwayatPesanan
                                                            .status ==
                                                        Status.dibatalkan) {
                                                      return Error50;
                                                    }
                                                  }(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // SizedBox(height: 8.sp),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.sp),
                                      child: CostumDivider(),
                                    ),
                                    // SizedBox(height: 8.sp),
                                    Padding(
                                      padding: EdgeInsets.all(16.sp),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                              onTap: () {},
                                              borderRadius:
                                                  BorderRadius.circular(4.r),
                                              child: Ink(
                                                height: Get.width / 5,
                                                width: Get.width / 5,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.r),
                                                  border: Border.all(
                                                    color: Neutral10,
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.r),
                                                  child: CachedNetworkImage(
                                                    imageUrl:
                                                        riwayatPesanan.image,
                                                    fit: BoxFit.cover,
                                                    placeholder:
                                                        (context, url) =>
                                                            Shimmer.fromColors(
                                                      baseColor:
                                                          Colors.grey.shade200,
                                                      highlightColor:
                                                          Colors.white,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors
                                                              .grey.shade100,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(
                                                                4.r),
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
                                                  // color: Color.fromARGB(
                                                  //     255,
                                                  //     87,
                                                  //     207,
                                                  //     255),
                                                  height: 24.5.w,
                                                  child: Text(
                                                    riwayatPesanan.name,
                                                    style: TextStyle(
                                                      fontSize: 11.5.w,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: H333333,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                // SizedBox(
                                                //     height:
                                                //         4.0.w),
                                                Row(
                                                  children: [
                                                    Text(
                                                      riwayatPesanan
                                                              .jumlahPesanan
                                                              .toString() +
                                                          " item",
                                                      style: TextStyle(
                                                        fontSize: 9.5.w,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Neutral90,
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                SizedBox(height: 16.0.sp),
                                                Container(
                                                  // color: Colors.amber,
                                                  width: Get.width / 3.5,
                                                  // color: Color.fromARGB(
                                                  //     255,
                                                  //     255,
                                                  //     137,
                                                  //     222),
                                                  child: Text(
                                                    "Rp ${f.format(riwayatPesanan.price.toInt())}",
                                                    // "Rp 123.456.789.000",
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 13.5.w,
                                                      fontWeight:
                                                          FontWeight.w600,
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
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(height: 16.sp),
                  Container(
                    // height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow_02(),
                      ],
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.sp),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 24.w,
                                width: 24.w,
                                child: SvgPicture.asset(
                                  'assets/icons/lucide_package.svg',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: 16.sp),
                              Flexible(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // color: Colors.amber,
                                      height: 34.w,
                                      child: Text(
                                        riwayatPesanan.name,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 11.5.w,
                                          fontWeight: FontWeight.w600,
                                          color: H333333,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 4.w),
                                    Visibility(
                                      visible: riwayatPesanan.resi != null,
                                      child: Text(
                                        "Kode Resi: ${riwayatPesanan.resi}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 10.w,
                                          fontWeight: FontWeight.w400,
                                          color: H333333,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.sp),
                          CostumDivider(),
                          SizedBox(height: 24.sp),
                          ListView.builder(
                            padding: EdgeInsets.all(0),
                            shrinkWrap: true,
                            itemCount: riwayatPesanan.lacakPesanan.length,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final reversedIndex =
                                  riwayatPesanan.lacakPesanan.length -
                                      1 -
                                      index;
                              final lacak =
                                  riwayatPesanan.lacakPesanan[reversedIndex];

                              return Column(
                                // mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 8.w,
                                                    width: 8.w,
                                                    decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: () {
                                                          if (index == 0) {
                                                            return [
                                                              Color(0xFF4D89D4),
                                                              Color(0xFF216BC9),
                                                            ];
                                                          } else {
                                                            return [
                                                              Neutral70,
                                                              Neutral70,
                                                            ];
                                                          }
                                                        }(),
                                                        begin:
                                                            Alignment.topCenter,
                                                        end: Alignment
                                                            .bottomCenter,
                                                      ),
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                  SizedBox(width: 8.w),
                                                  Text(
                                                    () {
                                                      if (reversedIndex == 0) {
                                                        return "Seller - ";
                                                      } else {
                                                        return "Track - ";
                                                      }
                                                    }(),
                                                    style: TextStyle(
                                                      fontSize: 10.w,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: H333333,
                                                    ),
                                                  ),
                                                  Text(
                                                    controller.isSameDay(
                                                            DateTime.now(),
                                                            lacak.waktu)
                                                        ? "Hari ini"
                                                        : controller
                                                                .isYesterday(
                                                                    lacak.waktu)
                                                            ? "Kemarin"
                                                            : "${DateFormat('EEEE, d MMMM yyyy', 'id_ID').format(lacak.waktu)}",
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 10.w,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: H333333,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 6.sp),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(width: 3.35.w),
                                                  reversedIndex == 0
                                                      ? SizedBox()
                                                      : Dash(
                                                          direction:
                                                              Axis.vertical,
                                                          length: 44.sp,
                                                          dashColor: Neutral50,
                                                          dashThickness: 0.75.w,
                                                        ),
                                                  SizedBox(width: 8.w + 4.w),
                                                  Container(
                                                    width: Get.width -
                                                        64.w -
                                                        8.w -
                                                        8.w,
                                                    // color: Colors.amber,
                                                    child: Text(
                                                      // "HGDSFGSD SDFCIJDSBFJSD DSHFGBDSHFGD SXIFGFDSF DSHJFHGDS",
                                                      lacak.info,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                        fontSize: 10.w,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: H333333,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 6.sp),
                                            ],
                                          ),
                                          //
                                        ],
                                      ),
                                      Positioned(
                                        right: 0,
                                        top: 0,
                                        child: Text(
                                          "${DateFormat('HH:mm').format(lacak.waktu)}",
                                          style: TextStyle(
                                            fontSize: 10.w,
                                            fontWeight: FontWeight.w400,
                                            color: Neutral90,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                          SizedBox(height: 20.sp),
                          CostumDivider(),
                          SizedBox(height: 16.sp),
                          Row(
                            children: [
                              Text(
                                "Status: ",
                                style: TextStyle(
                                  fontSize: 10.w,
                                  fontWeight: FontWeight.w400,
                                  color: H333333,
                                ),
                              ),
                              Text(
                                () {
                                  if (riwayatPesanan.status ==
                                      Status.diproses) {
                                    return "Pesanan sedang diproses";
                                  } else if (riwayatPesanan.status ==
                                      Status.dikirim) {
                                    return "Pesanan dalam pengiriman";
                                  } else if (riwayatPesanan.status ==
                                      Status.sampaiTujuan) {
                                    return "Pesanan telah sampai";
                                  } else if (riwayatPesanan.status ==
                                      Status.selesai) {
                                    return "Pesanan selesai";
                                  } else if (riwayatPesanan.status ==
                                      Status.dibatalkan) {
                                    return "Pesanan dibatalkan";
                                  } else {
                                    return "";
                                  }
                                }(),
                                style: TextStyle(
                                  fontSize: 10.w,
                                  fontWeight: FontWeight.w600,
                                  color: Primary50,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (riwayatPesanan.status == Status.diproses)
                    Column(
                      children: [
                        SizedBox(height: 16.sp),
                        InkWell(
                          onTap: () {
                            PesananDibatalkan_ModalBottomSheet(context);
                          },
                          borderRadius: BorderRadius.circular(32.r),
                          splashColor: Primary50.withOpacity(0.1),
                          highlightColor: Primary50.withOpacity(0.2),
                          child: Container(
                            height: 38.w,
                            width: Get.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32.r),
                              border: Border.all(
                                color: Primary30,
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Batalkan Pesanan",
                                style: TextStyle(
                                  fontSize: 15.5.w,
                                  fontWeight: FontWeight.w600,
                                  color: Primary50,
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
      ),
    );
  }
}
