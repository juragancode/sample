import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../modules/home/controllers/home_controller.dart';

final HomeController homeController = Get.put(HomeController());

class contentShopAccount extends StatelessWidget {
  const contentShopAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                      width: 167.w,
                      // height: 110.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 32.sp,
                              width: 32.sp,
                              child: SvgPicture.asset(
                                'assets/icons/icon-Mesin-Kasir-Blue.svg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8.sp),
                            Text(
                              "Mesin Kasir",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: H333333,
                              ),
                            ),
                            SizedBox(height: 2.sp),
                            Text(
                              "Hitung penjualanmu dengan mesin kasir otomatis.",
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: Neutral90,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: 167.w,
                      // height: 110.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 32.sp,
                              width: 32.sp,
                              child: SvgPicture.asset(
                                'assets/icons/icon-Kelola Product-Yellow.svg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8.sp),
                            Text(
                              "Kelola Produk",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: H333333,
                              ),
                            ),
                            SizedBox(height: 2.sp),
                            Text(
                              "Kelola stok, varian, dan kategori produkmu",
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: Neutral90,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //
              SizedBox(height: 8.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                      width: 167.w,
                      // height: 110.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.sp,
                          vertical: 10.sp,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Pesanan Baru",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: H333333,
                                  ),
                                ),
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Error50,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4.sp),
                            Text(
                              "3",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: H333333,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: 167.w,
                      // height: 110.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.sp,
                          vertical: 10.sp,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pesanan Selesai",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: H333333,
                              ),
                            ),
                            SizedBox(height: 4.sp),
                            Text(
                              "15",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: H333333,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //
            ],
          ),
        ),
        SizedBox(height: 16.sp),
        Container(
          width: 343.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Color(0xFFFFFFFF),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  'assets/icons/Banner-Buat-Promo.svg',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.sp,
                  vertical: 10.sp,
                ),
                child: Row(
                  children: [
                    Container(
                      // color: Colors.green,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 3.81,
                          horizontal: 10,
                        ),
                        child: Container(
                          // color: Colors.amber,
                          height: 39.71.sp,
                          width: 39.71.sp,
                          child: SvgPicture.asset(
                            'assets/icons/icon-Buat-Promo.svg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(width: 12.64.sp),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 225.sp,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Buat Promo",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: H333333,
                                  ),
                                ),
                                SizedBox(height: 4.sp),
                                Text(
                                  "Promosikan produkmu dengan diskon menarik & kupon belanja.",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Neutral90,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            CupertinoIcons.chevron_forward,
                            color: Primary50,
                            size: 20.sp,
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
        SizedBox(height: 16.sp),
        Padding(
          padding: EdgeInsets.all(0),
          child: Flexible(
            child: Container(
              width: 343.w,
              // height: 220.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Color(0xFFFFFFFF),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Statistik Penjualan",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 16.sp,
                            right: 16.sp,
                            bottom: 16.sp,
                          ),
                          child: AspectRatio(
                            aspectRatio: 1.7,
                            child: LineChart(
                              LineChartData(
                                minX: 0,
                                minY: 0,
                                maxX: 5,
                                maxY: 25,
                                borderData: FlBorderData(
                                  show: true,
                                  border: Border.all(
                                    color: Neutral50,
                                    width: 1.0,
                                  ),
                                ),
                                gridData: FlGridData(
                                  show: true,
                                  verticalInterval: 1,
                                  horizontalInterval: 5,
                                  getDrawingHorizontalLine: (value) {
                                    return FlLine(
                                      color: Neutral50,
                                      strokeWidth: 1,
                                    );
                                  },
                                  drawVerticalLine: true,
                                  getDrawingVerticalLine: (value) {
                                    return FlLine(
                                      color: Neutral50,
                                      strokeWidth: 1,
                                    );
                                  },
                                ),
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: [
                                      FlSpot(0, 2.5),
                                      FlSpot(1, 5),
                                      FlSpot(2, 10),
                                      FlSpot(3, 14.4),
                                      FlSpot(4, 18.5),
                                      FlSpot(5, 21.5),
                                    ],
                                    color: Primary50,
                                    isCurved: true,
                                    dotData: FlDotData(
                                      show: true,
                                      getDotPainter:
                                          (spot, percent, barData, index) {
                                        final color = Primary10;
                                        return FlDotCirclePainter(
                                          radius: 0,
                                          color: color,
                                          strokeWidth: 3,
                                          strokeColor: color,
                                        );
                                      },
                                    ),
                                    belowBarData: BarAreaData(
                                      show: false,
                                    ),
                                    barWidth: 2,
                                  ),
                                ],
                                titlesData: FlTitlesData(
                                  show: true,
                                  topTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: false,
                                    ),
                                  ),
                                  rightTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: false,
                                    ),
                                  ),
                                  leftTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      interval: 5,
                                      showTitles: true,
                                      reservedSize: 25,
                                      getTitlesWidget: (value, meta) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            right: 6.sp,
                                          ),
                                          child: Text(
                                            value.toInt().toString(),
                                            style: TextStyle(
                                              color: H333333,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textDirection: TextDirection.rtl,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  bottomTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      interval: 1,
                                      reservedSize: 30,
                                      getTitlesWidget: (value, meta) {
                                        String text = '';

                                        switch (value.toInt()) {
                                          case 0:
                                            text = '6 Mei';
                                            break;
                                          case 1:
                                            text = '11 Mei';
                                            break;
                                          case 2:
                                            text = '16 Mei';
                                            break;
                                          case 3:
                                            text = '21 Mei';
                                            break;
                                          case 4:
                                            text = '26 Mei';
                                            break;
                                          case 5:
                                            text = '1 Juni';
                                            break;
                                          default:
                                            text = '';
                                            break;
                                        }
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            top: 12.sp,
                                            left: 10.sp,
                                          ),
                                          child: Text(
                                            text,
                                            style: TextStyle(
                                              color: H333333,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        );
                                      },
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
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
