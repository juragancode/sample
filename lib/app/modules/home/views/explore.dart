import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../model/Filter_model.dart';
import '../../../model/toko_model.dart';
import '../../../widgets/AppBarGAS.dart';
import '../../../widgets/FilterAppBar.dart';
import '../../../widgets/TabBarExplore.dart';
import '../../../widgets/backgroundExplore.dart';
import '../../../widgets/contentExplorer.dart';
import '../controllers/home_controller.dart';

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
                    Builder(
                      builder: (context) {
                        return Column(
                          children: ShopList().shops.map((shop) {
                            return Center(
                              child: Column(
                                children: [
                                  Text(
                                    shop.name,
                                    style: TextStyle(
                                      fontSize: 11.5.w,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 4.sp),

                                  // SizedBox(height: 4.sp),

                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            shop.rating.toString(),
                                            style: TextStyle(
                                              fontSize: 10.w,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 6.sp),
                                      Row(
                                        children: [
                                          Text(
                                            shop.location,
                                            style: TextStyle(
                                              fontSize: 10.w,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 6.sp),
                                      Row(
                                        children: [
                                          Text(
                                            shop.nameShop,
                                            style: TextStyle(
                                              fontSize: 10.w,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // Display product information for the selected shop
                                  Container(
                                    height: 80.w,
                                    color: Colors.amber,
                                    child: ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      itemCount: shop.product.length > 3
                                          ? 3
                                          : shop.product.length,
                                      itemBuilder: (context, index) {
                                        Product product = shop.product[index];
                                        return Card(
                                          child: Container(
                                            width: 80.0.w,
                                            height: 80.0.w,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
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
                            );
                          }).toList(),
                        );
                      },
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
