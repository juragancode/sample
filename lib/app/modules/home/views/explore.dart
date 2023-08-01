import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constant/colors.dart';
import 'package:get/get.dart';

import '../../../model/Filter_model.dart';
import '../../../model/toko_model.dart';
import '../../../widgets/AppBarGAS.dart';
import '../../../widgets/FilterAppBar.dart';
import '../../../widgets/TabBarExplore.dart';
import '../../../widgets/backgroundExplore.dart';
import '../../../widgets/contentExplorer.dart';
import '../controllers/home_controller.dart';
import '../../../widgets/BoxShadow.dart';

BorderStyle borderStyle = BorderStyle.solid;

class Explore extends GetView<HomeController> {
  final FilterList filterList = FilterList();

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
              SizedBox(height: 54.w),
              AppBarGAS(borderStyle: borderStyle),
              TabBarExplore(),
              FilterAppBar(),
              Obx(
                () => IndexedStack(
                  index: controller.isTokoIndex.value,
                  children: [
                    ContentExplorer(),
                    //
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 4.sp),
                        Builder(
                          builder: (context) {
                            return Column(
                              children: ShopList().shops.map((shop) {
                                return Center(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.sp,
                                      vertical: 12.sp,
                                    ),
                                    child: Container(
                                      height: 152.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        color: Color(0xFFFFFFFF),
                                        boxShadow: [
                                          BoxShadow_01(),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0.sp),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 40.w,
                                                  width: 40.w,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: Neutral50,
                                                      width: 0.5.sp,
                                                    ),
                                                  ),
                                                  child: ClipOval(
                                                    child: Image.asset(
                                                      'assets/icons/Shop/${shop.imageShop}',
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 9.5.w),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      shop.name,
                                                      style: TextStyle(
                                                        fontSize: 11.5.w,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: H333333,
                                                      ),
                                                    ),
                                                    SizedBox(height: 4.sp),
                                                    Container(
                                                      // color: Colors.amber,
                                                      width: 275.w,
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color: Secondary50,
                                                            size: 15.w,
                                                          ),
                                                          SizedBox(width: 4.sp),
                                                          Text(
                                                            shop.rating
                                                                .toString(),
                                                            style: TextStyle(
                                                              fontSize: 10.w,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Neutral90,
                                                            ),
                                                          ),
                                                          SizedBox(width: 6.sp),
                                                          Icon(
                                                            Icons.place,
                                                            color: Warning50,
                                                            size: 15.w,
                                                          ),
                                                          SizedBox(width: 4.sp),
                                                          Text(
                                                            shop.location,
                                                            style: TextStyle(
                                                              fontSize: 10.w,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Neutral90,
                                                            ),
                                                          ),
                                                          SizedBox(width: 6.sp),
                                                          SizedBox(
                                                              width: 1.5.w),
                                                          Container(
                                                            height: 14.w,
                                                            width: 14.w,
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/icons/icon-Bag-Green.svg',
                                                              fit: BoxFit
                                                                  .contain,
                                                              // height: 11.sp,
                                                              // width: 11.sp,
                                                            ),
                                                          ),
                                                          SizedBox(width: 4.sp),
                                                          Flexible(
                                                            child: Text(
                                                              shop.nameShop,
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: TextStyle(
                                                                fontSize: 10.w,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color:
                                                                    Neutral90,
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
                                            SizedBox(height: 16.sp),

                                            // SizedBox(height: 4.sp),

                                            // Display product information for the selected shop
                                            Container(
                                              height: 80.w,
                                              color: Colors.amber,
                                              child: ListView.builder(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                shrinkWrap: true,
                                                itemCount:
                                                    shop.product.length > 3
                                                        ? 3
                                                        : shop.product.length,
                                                itemBuilder: (context, index) {
                                                  Product product =
                                                      shop.product[index];
                                                  return Card(
                                                    child: Container(
                                                      width: 80.0.w,
                                                      height: 80.0.w,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          4.r,
                                                        ),
                                                      ),
                                                      child: Image.asset(
                                                        'assets/icons/Product/${product.productImage}',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
