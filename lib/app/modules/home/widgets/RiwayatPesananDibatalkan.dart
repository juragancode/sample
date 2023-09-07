import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

import '../../../constant/colors.dart';
import '../../../model/RiwayatPesanan_model.dart';
import '../../../widgets/Decoration/BoxShadow.dart';
import '../../productDetail/views/product_detail_view.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

RiwayatPesananList riwayatPesanan = RiwayatPesananList();

final dibatalkan = riwayatPesanan.riwayatpesanan_
    .where((pesanan) => pesanan.status == Status.dibatalkan)
    .toList();

class RiwayatPesananDibatalkan extends StatelessWidget {
  const RiwayatPesananDibatalkan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.sp),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          child: Column(
            children: [
              for (int index = 0; index < dibatalkan.length; index++)
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
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          dibatalkan[index].shopName,
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
                                            color: Error10,
                                          ),
                                          color: Error05,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.w, vertical: 3.w),
                                          child: Text(
                                            "Dibatalkan",
                                            style: TextStyle(
                                              fontSize: 10.w,
                                              fontWeight: FontWeight.w400,
                                              color: Error50,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8.sp),
                                  CostumDivider(),
                                  SizedBox(height: 8.sp),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          onTap: () {
                                            print("detail pengiriman");
                                          },
                                          borderRadius:
                                              BorderRadius.circular(4.r),
                                          child: Ink(
                                            height: Get.width / 5,
                                            width: Get.width / 5,
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
                                                imageUrl:
                                                    dibatalkan[index].image,
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
                                                dibatalkan[index].name,
                                                style: TextStyle(
                                                  fontSize: 11.5.w,
                                                  fontWeight: FontWeight.w400,
                                                  color: H333333,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              ),
                                            ),
                                            // SizedBox(
                                            //     height:
                                            //         4.0.w),
                                            Row(
                                              children: [
                                                Text(
                                                  dibatalkan[index]
                                                          .jumlahPesanan
                                                          .toString() +
                                                      " item",
                                                  style: TextStyle(
                                                    fontSize: 9.5.w,
                                                    fontWeight: FontWeight.w400,
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
                                                "Rp ${f.format(dibatalkan[index].price.toInt())}",
                                                // "Rp 123.456.789.000",
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
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 8.sp,
                        right: 8.sp,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 6.w),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(32.r),
                                  onTap: () {
                                    //
                                    print("beli lagi");
                                  },
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF4D89D4),
                                          Color(0xFF216BC9),
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      border: Border.all(
                                        width: 1,
                                        color: Primary30,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        32.r,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w, vertical: 5.w),
                                      child: Center(
                                        child: Text(
                                          "Beli Lagi",
                                          style: TextStyle(
                                            fontSize: 10.w,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
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
          ),
        ),
        SizedBox(height: 20.sp),
      ],
    );
  }
}
