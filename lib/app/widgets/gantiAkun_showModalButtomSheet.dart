import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../constant/colors.dart';
import '../model/account_model.dart';
import '../modules/home/controllers/home_controller.dart';
import 'checkModalBottomSheet_false.dart';
import 'checkModalBottomSheet_true.dart';

AccountList accountList = AccountList();

Future<dynamic> gantiAkun_showModalButtomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(24.0.r),
      ),
    ),
    builder: (BuildContext context) {
      return Builder(
        builder: (BuildContext context) {
          return GetBuilder<HomeController>(
            builder: (controller) {
              return Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 8.sp),
                    Container(
                      width: 40.w,
                      height: 4.sp,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(32.r),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        16.sp,
                        16.sp,
                        16.sp,
                        0,
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: accountList.accounts.length,
                        itemBuilder: (context, index) {
                          Account account = accountList.accounts[index];

                          return GestureDetector(
                            onTap: () {
                              controller.changeAccountIndex(index);
                              Get.back();
                            },
                            child: Material(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 40.w,
                                            width: 40.w,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4.r),
                                            ),
                                            child: ClipOval(
                                              child: CachedNetworkImage(
                                                imageUrl: account.image,
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
                                          SizedBox(width: 10.sp),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                account.name,
                                                style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF333333),
                                                ),
                                              ),
                                              SizedBox(height: 2.sp),
                                              Text(
                                                account.typeAccount,
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Neutral90,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      controller.accountIndex.value == index
                                          ? checkModalBottomSheet_true()
                                          : checkModalBottomSheet_false(),
                                    ],
                                  ),
                                  SizedBox(height: 20.sp),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    // SizedBox(height: 20.sp),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        16.sp,
                        0.sp,
                        16.sp,
                        16.sp,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 40.w,
                            width: 40.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Neutral30,
                                width: 1.sp,
                              ),
                            ),
                            child: Icon(
                              Icons.add,
                            ),
                          ),
                          SizedBox(width: 10.sp),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Tambah Akun",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF333333),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      );
    },
  );
}
