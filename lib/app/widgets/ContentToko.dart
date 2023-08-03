import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/colors.dart';
import '../model/toko_model.dart';
import 'BoxShadow.dart';
import 'LinearGradient.dart';

class ContentToko extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 4.sp),
        Builder(
          builder: (context) {
            return Column(
              children: ShopList().shops.map((shop) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.sp,
                      right: 16.sp,
                      top: 12.sp,
                    ),
                    child: Container(
                      height: 152.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow_01(),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.w),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      shop.name,
                                      style: TextStyle(
                                        fontSize: 11.5.w,
                                        fontWeight: FontWeight.w600,
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
                                            shop.rating.toString(),
                                            style: TextStyle(
                                              fontSize: 10.w,
                                              fontWeight: FontWeight.w400,
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
                                              fontWeight: FontWeight.w400,
                                              color: Neutral90,
                                            ),
                                          ),
                                          SizedBox(width: 6.sp),
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
                                          SizedBox(width: 4.sp),
                                          Flexible(
                                            child: Text(
                                              shop.nameShop,
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
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 16.sp),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 80.w,
                                  child: Expanded(
                                    child: ListView.separated(
                                      separatorBuilder:
                                          (BuildContext context, int index) {
                                        return SizedBox(width: 12.w);
                                      },
                                      physics: NeverScrollableScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      itemCount: shop.product.length > 3
                                          ? 3
                                          : shop.product.length,
                                      itemBuilder: (context, index) {
                                        Product product = shop.product[index];
                                        return Container(
                                          width: 80.0.w,
                                          height: 80.0.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4.r),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/icons/Product/${product.productImage}',
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12.w),
                                Container(
                                  height: 80.w,
                                  width: 51.w,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Primary30,
                                      width: 0.5.sp,
                                    ),
                                    gradient: LinearGradient_Blue_02(),
                                    borderRadius: BorderRadius.circular(4.r),
                                  ),
                                  child: Icon(
                                    Icons.chevron_right_rounded,
                                    size: 23.w,
                                    color: Primary50,
                                    weight: 100,
                                  ),
                                ),
                              ],
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
        SizedBox(height: 28.sp),
      ],
    );
  }
}
