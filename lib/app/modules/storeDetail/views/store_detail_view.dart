import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../constant/colors.dart';
import '../../../model/toko_model.dart';
import '../../../widgets/Decoration/BoxOpacity.dart';
import '../../../widgets/ImageShop.dart';
import '../controllers/store_detail_controller.dart';
import 'BackgroundStoreDetail.dart';
import 'ProdukTerbaruStoreDetail.dart';
import 'ProdukTerlarisStoreDetail.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

class StoreDetailView extends GetView<StoreDetailController> {
  @override
  Widget build(BuildContext context) {
    final Shop shop = Get.arguments;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      backgroundColor: BackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            BackgroundStoreDetail(shop: shop),
            Column(
              children: [
                SizedBox(height: 46.w),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(4.r),
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 32.sp,
                            width: 32.sp,
                            child: BoxOpacity(
                              child: Icon(
                                Icons.arrow_back_rounded,
                                color: Secondary50,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(4.r),
                          onTap: () {
                            print("share");
                          },
                          child: Container(
                            height: 32.sp,
                            width: 32.sp,
                            child: BoxOpacity(
                              child: Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 63.w),
                Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: BackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.r),
                      topRight: Radius.circular(8.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 16.0.sp),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
                        child: Column(
                          children: [
                            //
                            Stack(
                              children: [
                                Row(
                                  children: [
                                    //
                                    ImageShop(
                                      image: NetworkImage(
                                        shop.imageShop,
                                      ),
                                    ),
                                    SizedBox(width: 11.5.w),

                                    Container(
                                      // color: Color.fromARGB(255, 245, 170, 255),
                                      width: 270.w,
                                      height: 65.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(width: 3.sp),
                                              Flexible(
                                                child: Text(
                                                  shop.name,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontSize: 15.5.w,
                                                    fontWeight: FontWeight.w600,
                                                    color: H333333,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 4.sp),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.place,
                                                color: Warning50,
                                                size: 15.w,
                                              ),
                                              SizedBox(width: 4.sp),
                                              Flexible(
                                                child: Text(
                                                  shop.location,
                                                  // "Kalimat ini fungsinya seperti Lorem ipsum digunakan untuk test atau pengecekan pada kalimat panjang, mohon jangan dihapus. Karena bisa saja ini berguna lagi kemudian untuk dipakai di berbagai situasi seperti pengaturan overflow text.",
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontSize: 10.w,
                                                    fontWeight: FontWeight.w400,
                                                    color: Neutral90,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 4.sp),
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
                                              SizedBox(width: 3.5.w),
                                              Flexible(
                                                child: Text(
                                                  shop.nameShop,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 22.w,
                                    width: 22.w,
                                    child: SvgPicture.asset(
                                      'assets/icons/icon-Message-yellow.svg',
                                      fit: BoxFit.contain,
                                      // height: 20.sp,
                                      // width: 20.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16.sp),
                            Container(
                              height: 1,
                              width: Get.width,
                              color: D9D9D9,
                            ),
                            SizedBox(height: 12.sp),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Rating',
                                      style: TextStyle(
                                        fontSize: 11.5.w,
                                        fontWeight: FontWeight.w400,
                                        color: Neutral90,
                                      ),
                                    ),
                                    SizedBox(height: 8.sp),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star_rate_rounded,
                                          color: Secondary50,
                                          size: 17.w,
                                        ),
                                        SizedBox(width: 4.sp),
                                        Text(
                                          shop.rating.toString(),
                                          style: TextStyle(
                                            fontSize: 11.5.w,
                                            fontWeight: FontWeight.w600,
                                            color: H333333,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Jarak',
                                      style: TextStyle(
                                        fontSize: 11.5.w,
                                        fontWeight: FontWeight.w400,
                                        color: Neutral90,
                                      ),
                                    ),
                                    SizedBox(height: 8.sp),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.place,
                                          color: Warning50,
                                          size: 15.w,
                                        ),
                                        SizedBox(width: 4.sp),
                                        Text(
                                          '${shop.jarak.toString()} Km',
                                          style: TextStyle(
                                            fontSize: 11.5.w,
                                            fontWeight: FontWeight.w600,
                                            color: H333333,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Pengiriman',
                                      style: TextStyle(
                                        fontSize: 11.5.w,
                                        fontWeight: FontWeight.w400,
                                        color: Neutral90,
                                      ),
                                    ),
                                    SizedBox(height: 8.sp),
                                    Row(
                                      children: [
                                        Container(
                                          height: 15.w,
                                          width: 15.w,
                                          child: SvgPicture.asset(
                                            'assets/icons/icon-Kurir-green.svg',
                                            fit: BoxFit.contain,
                                            // height: 14.w,
                                            // width: 14.w,
                                          ),
                                        ),
                                        SizedBox(width: 4.sp),
                                        Text(
                                          shop.kurir == true
                                              ? "Kurir Tersedia"
                                              : "Kurir Belum Tersedia",
                                          style: TextStyle(
                                            fontSize: 11.5.w,
                                            fontWeight: FontWeight.w600,
                                            color: H333333,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 12.sp),
                            Container(
                              height: 1,
                              width: Get.width,
                              color: D9D9D9,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.0.sp),
                      ProdukTerbaruStoreDetail(),
                      ProdukTerlarisStoreDetail(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
