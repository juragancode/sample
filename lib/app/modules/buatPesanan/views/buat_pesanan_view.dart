import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g_a_s_app_rekadigi/app/model/metodePembayaran_model.dart';
import 'package:g_a_s_app_rekadigi/app/widgets/metodePembayaran_showModalButtomSheet.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

import '../../../constant/colors.dart';
import '../../../model/keranjang_model.dart';
import '../../../widgets/Decoration/BoxShadow.dart';
import '../../../widgets/checkModalBottomSheet_false.dart';
import '../../../widgets/checkModalBottomSheet_true.dart';
import '../../productDetail/views/product_detail_view.dart';
import '../controllers/buat_pesanan_controller.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

ShopList shopList = ShopList();

List<Shop> shops = shopList.shops;

MetodePembayaranList metodePembayaranList = MetodePembayaranList();

class BuatPesananView extends GetView<BuatPesananController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      backgroundColor: BackgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      width: Get.width,
                      height: 85.w,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow_03(),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 46.w,
                      left: 16.sp,
                      right: 16.sp,
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              ClipOval(
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Container(
                                      height: 32.sp,
                                      width: 32.sp,
                                      child: Icon(
                                        Icons.arrow_back_rounded,
                                        color: Secondary50,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 6.sp),
                              Text(
                                "Buat Pesanan",
                                style: TextStyle(
                                  fontSize: 15.5.sp,
                                  fontWeight: FontWeight.w600,
                                  color: H333333,
                                ),
                              ),
                            ],
                          ),

                          ///
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 85.w),
                      SizedBox(height: 16.sp),
                      Text(
                        "Tipe Pembelian",
                        style: TextStyle(
                          fontSize: 13.5.sp,
                          fontWeight: FontWeight.w600,
                          color: H333333,
                        ),
                      ),
                      SizedBox(height: 8.sp),
                      Obx(
                        () => Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                controller.tipePembelian.value = 1;
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    controller.tipePembelian.value == 1
                                        ? checkModalBottomSheet_true()
                                        : checkModalBottomSheet_false(),
                                    SizedBox(width: 6.w),
                                    Text(
                                      "Ambil di Toko",
                                      style: TextStyle(
                                        fontSize: 11.5.sp,
                                        fontWeight: FontWeight.w400,
                                        color: H333333,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 20.w),
                            GestureDetector(
                              onTap: () {
                                controller.tipePembelian.value = 2;
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    controller.tipePembelian.value == 2
                                        ? checkModalBottomSheet_true()
                                        : checkModalBottomSheet_false(),
                                    SizedBox(width: 6.w),
                                    Text(
                                      "Diantar ke Alamat",
                                      style: TextStyle(
                                        fontSize: 11.5.sp,
                                        fontWeight: FontWeight.w400,
                                        color: H333333,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.sp),
                      Obx(
                        () => Column(
                          children: [
                            TipePembelian(
                              visible: controller.tipePembelian.value == 1,
                              alamat:
                                  "Jalan Urip Sumohardjo No.38, Notosuman, Serengan, Kota Surakarta, Jawa Tengah,  Indonesia, 57151",
                              child: InkWell(
                                onTap: () {
                                  //
                                },
                                borderRadius: BorderRadius.circular(4.r),
                                splashColor: Primary50.withOpacity(0.1),
                                highlightColor: Primary50.withOpacity(0.2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/majesticons_map-marker-area.svg',
                                      fit: BoxFit.cover,
                                      height: 18.04.w,
                                      width: 18.04.w,
                                    ),
                                    SizedBox(width: 4.w),
                                    Text(
                                      "Buka Map",
                                      style: TextStyle(
                                        fontSize: 11.5.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Primary50,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(
                                  color: Primary30,
                                  width: 1,
                                ),
                              ),
                              label: "Alamat Toko",
                            ),

                            //
                            TipePembelian(
                              visible: controller.tipePembelian.value == 2,
                              label: "Rumah",
                              alamat:
                                  "Baron, Jl. Wijaya Kusuma No.39, Tipes, Kec. Serengan, Kota Surakarta, Jawa Tengah 57154, Indonesia",
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Flexible(
                                  child: RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Naufal Wibawanto' + '    ',
                                          style: TextStyle(
                                            color: H333333,
                                            fontSize: 11.5.w,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        TextSpan(
                                          text: "08******6863",
                                          style: TextStyle(
                                            color: H333333,
                                            fontSize: 11.5.w,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Movemax Sport",
                        style: TextStyle(
                          fontSize: 11.5.sp,
                          fontWeight: FontWeight.w600,
                          color: H333333,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 8.sp),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 88.w,
                            width: 88.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              border: Border.all(
                                color: Neutral10,
                                width: 0.5,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.r),
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://down-id.img.susercontent.com/file/bd02f0fcc2dfc7ed83df933482dde00f",
                                fit: BoxFit.cover,
                                placeholder: (context, url) =>
                                    Shimmer.fromColors(
                                  baseColor: Colors.grey.shade200,
                                  highlightColor: Colors.white,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4.r),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Celana Pendek Parasut Olahraga Saku Resleting Pria Wanita Running Gym Sport Kolor Volly Futsal Bulu Tangkis Jogging Bahan",
                                  style: TextStyle(
                                    fontSize: 11.5.sp,
                                    fontWeight: FontWeight.w400,
                                    color: H333333,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 4.w),
                                Text(
                                  "× 2",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Neutral90,
                                  ),
                                ),
                                SizedBox(height: 4.w),
                                Text(
                                  "Rp ${f.format(76000.toInt())}",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Neutral90,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                SizedBox(height: 2.w),
                                Text(
                                  "Rp ${f.format(68000.toInt())}",
                                  style: TextStyle(
                                    fontSize: 11.5.sp,
                                    fontWeight: FontWeight.w600,
                                    color: H333333,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.sp),
                      Text(
                        "Tambah Catatan",
                        style: TextStyle(
                          fontSize: 11.5.sp,
                          fontWeight: FontWeight.w600,
                          color: H333333,
                        ),
                      ),
                      SizedBox(height: 8.sp),
                      Neumorphic(
                        style: NeumorphicStyle(
                          depth: -3.5.w,
                          shadowDarkColorEmboss: Colors.black.withOpacity(0.5),
                          shadowLightColorEmboss: Colors.white,
                          color: F0F0F0,
                          boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(24.0.sp),
                          ),
                        ),
                        child: Container(
                          height: 33.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                          ),
                          child: Center(
                            child: TextField(
                              onChanged: (value) {},
                              style: TextStyle(
                                decorationThickness: 0,
                                fontSize: 11.5.w,
                                fontWeight: FontWeight.w400,
                                color: H333333,
                              ),
                              // focusNode: controller.passBaruUlangFN,
                              // controller: controller.passBaruUlangC,
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.text,

                              autocorrect: false,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:
                                    'Tuliskan catatan tambahan (Max. 200 karakter)'
                                        .tr,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20.w, vertical: 11.w),
                                hintStyle: TextStyle(
                                  fontSize: 11.5.w,
                                  fontWeight: FontWeight.w400,
                                  color: Neutral50,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.sp),
                      Obx(
                        () {
                          MetodePembayaran selectedMetodePembayaran =
                              metodePembayaranList.metodePembayaran[
                                  controller.metodePembayaranIndex.value];
                          return InkWell(
                            onTap: () {
                              metodePembayaran_showModalButtomSheet(context);
                              print(selectedMetodePembayaran.image);
                              print(selectedMetodePembayaran.name);
                            },
                            borderRadius: BorderRadius.circular(8.r),
                            splashColor: Colors.blue.shade200.withOpacity(0.5),
                            child: Container(
                              height: 36.w,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.white.withOpacity(0.5),
                                    Primary30.withOpacity(0.5),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(
                                  color: Primary30,
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.sp),
                                    child: controller
                                                .metodePembayaranIndex.value !=
                                            0
                                        ? Row(
                                            children: [
                                              SvgPicture.asset(
                                                selectedMetodePembayaran.image,
                                                fit: BoxFit.cover,
                                                height: 28.w,
                                                width: 28.w,
                                              ),
                                              SizedBox(width: 8.w),
                                              Text(
                                                selectedMetodePembayaran.name,
                                                style: TextStyle(
                                                  fontSize: 11.5.w,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF333333),
                                                ),
                                              ),
                                            ],
                                          )
                                        : Text(
                                            "Pilih Metode Pembayaran",
                                            style: TextStyle(
                                              fontSize: 11.5.w,
                                              fontWeight: FontWeight.w600,
                                              color: Primary50,
                                            ),
                                          ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 4.0.w),
                                    child: Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      color: Primary50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 20.sp),
                      Text(
                        "Ringkasan Pesanan",
                        style: TextStyle(
                          fontSize: 13.5.w,
                          fontWeight: FontWeight.w600,
                          color: H333333,
                        ),
                      ),
                      SizedBox(height: 16.sp),
                      CostumDivider(),
                      SizedBox(height: 8.sp),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subtotal",
                            style: TextStyle(
                              fontSize: 11.5.w,
                              fontWeight: FontWeight.w400,
                              color: H333333,
                            ),
                          ),
                          Text(
                            "Rp ${f.format(136000.toInt())}",
                            style: TextStyle(
                              fontSize: 11.5.w,
                              fontWeight: FontWeight.w400,
                              color: H333333,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.sp),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Biaya Ongkir",
                            style: TextStyle(
                              fontSize: 11.5.w,
                              fontWeight: FontWeight.w400,
                              color: H333333,
                            ),
                          ),
                          Text(
                            "Rp ${f.format(6000.toInt())}",
                            style: TextStyle(
                              fontSize: 11.5.w,
                              fontWeight: FontWeight.w400,
                              color: H333333,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.sp),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Diskon",
                            style: TextStyle(
                              fontSize: 11.5.w,
                              fontWeight: FontWeight.w400,
                              color: H333333,
                            ),
                          ),
                          Text(
                            "0",
                            style: TextStyle(
                              fontSize: 11.5.w,
                              fontWeight: FontWeight.w400,
                              color: H333333,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.sp),
                      CostumDivider(),
                      SizedBox(height: 8.sp),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                              fontSize: 11.5.w,
                              fontWeight: FontWeight.w600,
                              color: H333333,
                            ),
                          ),
                          Text(
                            "Rp ${f.format(142000.toInt())}",
                            style: TextStyle(
                              fontSize: 11.5.w,
                              fontWeight: FontWeight.w600,
                              color: H333333,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 140.w + 30.sp),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              height: 108.w + 32.sp,
              width: Get.width,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow_00(),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  16.sp,
                  16.sp,
                  16.sp,
                  0,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 36.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Color(0xFFC9E0FF),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                SizedBox(width: 9.w),
                                SvgPicture.asset(
                                  'assets/icons/icon-Buat-Promo.svg',
                                  fit: BoxFit.cover,
                                  height: 18.04.w,
                                  width: 18.04.w,
                                ),
                                SizedBox(width: 9.w),
                                Text(
                                  "Gunakan Promo Tersedia",
                                  style: TextStyle(
                                    fontSize: 11.5.w,
                                    fontWeight: FontWeight.w600,
                                    color: H333333,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 4.0.w),
                            child: Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: Primary50,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.sp),
                    Row(
                      children: [
                        SizedBox(width: 4.w),
                        Icon(
                          CupertinoIcons.checkmark_alt_circle_fill,
                          color: Success50,
                          size: 17.17.w,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          "Yeay! kamu menghemat Rp 10.000",
                          style: TextStyle(
                            fontSize: 11.5.w,
                            fontWeight: FontWeight.w400,
                            color: Neutral70,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Total",
                                    style: TextStyle(
                                      fontSize: 11.5.w,
                                      fontWeight: FontWeight.w600,
                                      color: H333333,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_up_rounded,
                                    size: 20.sp,
                                    color: H333333,
                                  ),
                                ],
                              ),
                              Text(
                                "Rp ${f.format(142000.toInt())}",
                                style: TextStyle(
                                  fontSize: 13.5.w,
                                  fontWeight: FontWeight.w600,
                                  color: Primary50,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Material(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(8.r),
                            onTap: () {
                              //
                            },
                            child: Ink(
                              width: 112.w,
                              height: 37.w,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Primary30,
                                    Primary50,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: Center(
                                child: Text(
                                  "Pembayaran",
                                  style: TextStyle(
                                    fontSize: 11.5.w,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TipePembelian extends GetView<BuatPesananController> {
  const TipePembelian({
    super.key,
    required this.label,
    required this.alamat,
    required this.child,
    required this.visible,
    required this.decoration,
  });

  final String label;
  final String alamat;
  final Widget child;
  final bool visible;
  final Decoration decoration;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 22.w,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Primary30,
                      Primary50,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 2.w,
                      horizontal: 6.w,
                    ),
                    child: Text(
                      label,
                      style: TextStyle(
                        fontSize: 10.w,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Flexible(
                child: Text(
                  alamat,
                  style: TextStyle(
                    fontSize: 10.w,
                    fontWeight: FontWeight.w400,
                    color: H333333,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.sp),
          Container(
            height: 36.w,
            decoration: decoration,
            child: child,
          ),
          SizedBox(height: 20.sp),
          Dash(
            length: Get.width - 32.sp,
            dashColor: Neutral50,
            dashThickness: 1.5,
          ),
          SizedBox(height: 20.sp),
        ],
      ),
    );
  }
}
