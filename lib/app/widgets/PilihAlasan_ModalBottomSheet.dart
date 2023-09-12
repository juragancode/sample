import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_a_s_app_rekadigi/app/model/alasanBatalkanPesanan_model.dart';
import 'package:g_a_s_app_rekadigi/app/modules/lacak/controllers/lacak_controller.dart';
import 'package:g_a_s_app_rekadigi/app/widgets/PesananDibatalkan_ModalBottomSheet%20.dart';
import 'package:g_a_s_app_rekadigi/app/widgets/checkModalBottomSheet_false.dart';
import 'package:g_a_s_app_rekadigi/app/widgets/checkModalBottomSheet_true.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';

Future<dynamic> PilihAlasan_ModalBottomSheet(BuildContext context) {
  final AlasanList alasan = AlasanList();

  var controller = Get.put(LacakController());

  return showModalBottomSheet(
    // isScrollControlled: true,
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(24.0.r),
      ),
    ),
    backgroundColor: BackgroundColor,
    builder: (BuildContext context) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            width: Get.width,
            decoration: BoxDecoration(
              // color: Colors.amber,
              color: BackgroundColor,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(24.0.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 8.sp),
                  //
                  Center(
                    child: Container(
                      width: 40.w,
                      height: 4.sp,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(32.r),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pilih Alasan",
                        style: TextStyle(
                          fontSize: 15.5.w,
                          fontWeight: FontWeight.w600,
                          color: H333333,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.close_rounded,
                          color: Secondary50,
                          size: 24.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.sp),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: alasan.alasans.length,
                    itemBuilder: (context, index) {
                      Alasan alasan_ = alasan.alasans[index];
                      return Obx(
                        () => Column(
                          children: [
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  controller.changeAlasanIndex(index);
                                },
                                child: Row(
                                  children: [
                                    controller.alasanIndex.value == index
                                        ? checkModalBottomSheet_true()
                                        : checkModalBottomSheet_false(),
                                    SizedBox(width: 10.w),
                                    Text(
                                      alasan_.alasan,
                                      style: TextStyle(
                                        fontSize: 11.5.w,
                                        fontWeight: FontWeight.w400,
                                        color: H333333,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 16.sp),
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 8.sp),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(32.r),
                      onTap: () {
                        //
                        // print("alasan : ${alasan.alasans[index]}");
                        print("kirim alasan");
                        Get.back();
                        PesananDibatalkan_ModalBottomSheet(context);
                      },
                      child: Ink(
                        height: 40.w,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Primary30,
                              Primary50,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(32.r),
                        ),
                        child: Center(
                          child: Text(
                            "Kirim Alasan",
                            style: TextStyle(
                              fontSize: 15.5.w,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 22.sp),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
