import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';
import 'Decoration/BoxShadow.dart';

class ChartStatistikPenjualan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Flexible(
        child: Container(
          width: 343.w,
          // height: 220.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Color(0xFFFFFFFF),
            boxShadow: [
              BoxShadow_01(),
            ],
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
                        fontSize: 13.5.w,
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
    );
  }
}
