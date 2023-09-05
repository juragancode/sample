import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../model/metodePembayaran_model.dart';
import '../modules/buatPesanan/controllers/buat_pesanan_controller.dart';
import 'checkModalBottomSheet_false.dart';
import 'checkModalBottomSheet_true.dart';

MetodePembayaranList metodePembayaranList = MetodePembayaranList();

Future<dynamic> metodePembayaran_showModalButtomSheet(BuildContext context) {
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
          return GetBuilder<BuatPesananController>(
            builder: (controller) {
              return Container(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(height: 20.sp),
                    Row(
                      children: [
                        SizedBox(width: 16.sp),
                        Text(
                          "Metode Pembayaran",
                          style: TextStyle(
                            fontSize: 15.5.w,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                      ],
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
                        itemCount: metodePembayaranList.metodePembayaran.length,
                        itemBuilder: (context, index) {
                          MetodePembayaran metodePembayarans =
                              metodePembayaranList.metodePembayaran[index];

                          return GestureDetector(
                            onTap: () {
                              controller.changeAccountIndex(index);
                              Get.back();
                              print(index);
                            },
                            child: Material(
                              child: metodePembayarans.image != "" ||
                                      metodePembayarans.name != ""
                                  ? Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  metodePembayarans.image,
                                                  fit: BoxFit.cover,
                                                  height: 32.w,
                                                  width: 32.w,
                                                ),
                                                SizedBox(width: 8.w),
                                                Text(
                                                  metodePembayarans.name,
                                                  style: TextStyle(
                                                    fontSize: 11.5.w,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF333333),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            controller.metodePembayaranIndex
                                                        .value ==
                                                    index
                                                ? checkModalBottomSheet_true()
                                                : checkModalBottomSheet_false(),
                                          ],
                                        ),
                                        SizedBox(height: 16.sp),
                                      ],
                                    )
                                  : Container(),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 16.sp),
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
