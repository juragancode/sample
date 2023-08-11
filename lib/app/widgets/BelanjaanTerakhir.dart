import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../constant/colors.dart';
import '../model/belanjaan_terakhir_model.dart';
import '../modules/home/controllers/home_controller.dart';
import 'Decoration/BoxShadow.dart';
import 'Decoration/Shimmer.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

class BelanjaanTerakhir extends GetView<HomeController> {
  final BelanjaanTerakhirList belanjaanTerakhirList = BelanjaanTerakhirList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 16.sp,
            right: 10.sp,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Belanjaan Terakhir",
                style: TextStyle(
                  fontSize: 15.5.w,
                  fontWeight: FontWeight.w600,
                  color: H333333,
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(4.r),
                onTap: () {
                  //
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.sp),
                  child: Text(
                    "Lihat Semua",
                    style: TextStyle(
                      fontSize: 13.5.w,
                      fontWeight: FontWeight.w600,
                      color: Primary50,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 198.0.w + 30.sp,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 8.sp);
            },
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            scrollDirection: Axis.horizontal,
            itemCount: belanjaanTerakhirList.belanjaanTerakhirs.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 122.0.w,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow_02(),
                  ],
                  borderRadius: BorderRadius.circular(8.r),
                ),
                margin: EdgeInsets.only(
                  top: 8.0.sp,
                  bottom: 30.sp,
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    8.0.w,
                    8.0.w,
                    8.0.w,
                    0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 106.0.w,
                        height: 90.0.w,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.0.sp),
                            topRight: Radius.circular(4.0.sp),
                          ),
                          border: Border.all(
                            color: Neutral10,
                            width: 0.5,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Shimmer_01(),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4.0.sp),
                                  topRight: Radius.circular(4.0.sp),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    belanjaanTerakhirList
                                        .belanjaanTerakhirs[index].image,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0.sp),
                      Container(
                        // color: Colors.amber,
                        height: 34.5.w,
                        child: Text(
                          belanjaanTerakhirList.belanjaanTerakhirs[index].name,
                          style: TextStyle(
                            fontSize: 11.5.w,
                            fontWeight: FontWeight.w400,
                            color: H333333,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      SizedBox(height: 8.0.sp),
                      Container(
                        height: 14.5.w,
                        child: Text(
                          "Rp ${f.format(belanjaanTerakhirList.belanjaanTerakhirs[index].priceDicoret.toInt())}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 9.5.w,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough,
                            color: Neutral90,
                          ),
                        ),
                      ),
                      Text(
                        "Rp ${f.format(belanjaanTerakhirList.belanjaanTerakhirs[index].price.toInt())}",
                        // "Kalimat ini fungsinya seperti Lorem ipsum digunakan untuk test atau pengecekan pada kalimat panjang, mohon jangan dihapus. Karena bisa saja ini berguna lagi kemudian untuk dipakai di berbagai situasi seperti pengaturan overflow text.",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 13.5.w,
                          fontWeight: FontWeight.w600,
                          color: H333333,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
