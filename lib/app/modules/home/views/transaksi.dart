import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../constant/colors.dart';
import '../../../model/RiwayatPesanan_model.dart';
import '../../../widgets/AppBarGAS.dart';
import '../../../widgets/FilterKosong.dart';
import '../../../widgets/FilterTransaksi.dart';
import '../../../widgets/backgroundExplore.dart';
import '../controllers/home_controller.dart';
import '../widgets/RiwayatPesananDibatalkan.dart';
import '../widgets/RiwayatPesananDikirim.dart';
import '../widgets/RiwayatPesananDiproses.dart';
import '../widgets/RiwayatPesananSampaiTujuan.dart';
import '../widgets/RiwayatPesananSelesai.dart';
import '../widgets/SemuaRiwayatPesanan.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

BorderStyle borderStyle = BorderStyle.solid;

RiwayatPesananList riwayatPesanan = RiwayatPesananList();
final diproses = riwayatPesanan.riwayatpesanan_
    .where((pesanan) => pesanan.status == Status.diproses)
    .toList();

final dikirim = riwayatPesanan.riwayatpesanan_
    .where((pesanan) => pesanan.status == Status.dikirim)
    .toList();

final sampaiTujuan = riwayatPesanan.riwayatpesanan_
    .where((pesanan) => pesanan.status == Status.sampaiTujuan)
    .toList();

final selesai = riwayatPesanan.riwayatpesanan_
    .where((pesanan) => pesanan.status == Status.selesai)
    .toList();

final dibatalkan = riwayatPesanan.riwayatpesanan_
    .where((pesanan) => pesanan.status == Status.dibatalkan)
    .toList();

class Transaksi extends GetView<HomeController> {
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
              SizedBox(height: 46.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Row(
                  children: [
                    SizedBox(width: 6.sp),
                    Text(
                      "Transaksi",
                      style: TextStyle(
                        fontSize: 15.5.sp,
                        fontWeight: FontWeight.w600,
                        color: H333333,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18.sp),
              AppBarGAS(borderStyle: borderStyle),
              SizedBox(height: 8.sp),
              FilterTransaksi(),
              Obx(
                () => AnimatedSwitcher(
                  duration: Duration(milliseconds: 500),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  child: (() {
                    switch (controller.filterTransaksi.value) {
                      case 0: // Semua Riwayat
                        return riwayatPesanan.riwayatpesanan_.isEmpty
                            ? FilterKosong(
                                title: "Hmm.. belum ada transaksi",
                                subtitle:
                                    "Semua transaksimu bakalan muncul di sini.",
                              )
                            : SemuaRiwayatPesanan();
                      case 1: // Diproses
                        return diproses.isEmpty
                            ? FilterKosong(
                                title:
                                    "Ups! nggak ada transaksi yang sesuai dengan filter, nih",
                                subtitle: "Coba reset atau ubah filtermu, ya.",
                              )
                            : RiwayatPesananDiproses();
                      case 2: // Dikirim
                        return dikirim.isEmpty
                            ? FilterKosong(
                                title:
                                    "Ups! nggak ada transaksi yang sesuai dengan filter, nih",
                                subtitle: "Coba reset atau ubah filtermu, ya.",
                              )
                            : RiwayatPesananDikirim();
                      case 3: // Sampai Tujuan
                        return sampaiTujuan.isEmpty
                            ? FilterKosong(
                                title:
                                    "Ups! nggak ada transaksi yang sesuai dengan filter, nih",
                                subtitle: "Coba reset atau ubah filtermu, ya.",
                              )
                            : RiwayatPesananSampaiTujuan();
                      case 4: // Selesai
                        return selesai.isEmpty
                            ? FilterKosong(
                                title:
                                    "Ups! nggak ada transaksi yang sesuai dengan filter, nih",
                                subtitle: "Coba reset atau ubah filtermu, ya.",
                              )
                            : RiwayatPesananSelesai();
                      case 5: // Dikirim
                        return dibatalkan.isEmpty
                            ? FilterKosong(
                                title:
                                    "Ups! nggak ada transaksi yang sesuai dengan filter, nih",
                                subtitle: "Coba reset atau ubah filtermu, ya.",
                              )
                            : RiwayatPesananDibatalkan();
                      default:
                        return Container();
                    }
                  })(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
