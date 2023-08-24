import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../constant/colors.dart';
import '../../../model/toko_model.dart';
import '../../../modules/storeDetail/widgets/FloatingActionButtonKeranjang.dart';
import '../../../widgets/Decoration/BoxOpacity.dart';
import '../../../widgets/Decoration/BoxShadow.dart';
import '../../../widgets/Decoration/Shimmer.dart';
import '../controllers/product_detail_controller.dart';
import '../widgets/ImageProfileComment.dart';
import '../widgets/ImageShop54.dart';
import '../widgets/InfoProduk.dart';

var f = NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0);

String formatLebihDari1000(int number) {
  if (number >= 1000000) {
    return '${(number / 1000000).toStringAsFixed(1)} JT';
  } else if (number >= 1000) {
    return '${(number / 1000).toStringAsFixed(1)} RB+';
  } else {
    return number.toString();
  }
}

class ProductDetailView extends GetView<ProductDetailController> {
  @override
  Widget build(BuildContext context) {
    // final Product product = Get.arguments as Product;

    final Map<String, dynamic> args = Get.arguments;
    final Product product = args['product'];
    final int index = args['index'];
    final Shop shop = args['shop'];
    final bool sdhMasukProdukDetail = args['sdhMasukProdukDetail'] ?? false;

    final randomJumlahKomentar = (5 + Random().nextInt(20));

    void showHeart() {
      controller.toggleFavoriteProductInStoreDetail(index);

      controller.animasiFavorit.toggle();
      Timer(Duration(milliseconds: 700), () {
        controller.animasiFavorit.toggle();
      });
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      backgroundColor: BackgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                  onDoubleTap: () {
                    showHeart();
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: Get.width,
                        height: Get.width,
                        child: Stack(
                          children: [
                            Shimmer_00(),
                            Image.network(
                              product.productImage,
                              width: Get.width,
                              height: Get.width,
                              fit: BoxFit.cover,
                            ),
                            Obx(
                              () => Center(
                                child: AnimatedOpacity(
                                  opacity: controller.animasiFavorit.value
                                      ? 0.8
                                      : 0.0, // Mengatur opacity berdasarkan kondisi
                                  duration: Duration(
                                      seconds: 1), // Durasi muncul/hilang
                                  child: Icon(
                                    Icons.favorite,
                                    color:
                                        controller.favoriteProducts[index].value
                                            ? Favorite
                                            : Neutral30,
                                    size: Get.width / 2.5, // Ukuran ikon hati
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 46.w),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(4.r),
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Container(
                                      height: 32.sp,
                                      width: 32.sp,
                                      child: BoxOpacity(
                                        child: Icon(
                                          Icons.arrow_back_rounded,
                                          color: Secondary50,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(4.r),
                                    onTap: () {
                                      print("share");
                                    },
                                    child: Container(
                                      height: 32.sp,
                                      width: 32.sp,
                                      child: BoxOpacity(
                                        child: Icon(
                                          Icons.share,
                                          color: Colors.white,
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
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, //
                        children: [
                          SizedBox(height: 16.sp),
                          Row(
                            children: [
                              Container(
                                // color: Colors.pink.shade200,
                                height: 40.w,
                                width: 315.w,
                                child: Text(
                                  product.productName,
                                  // "aaaa aaaaaa  aaaaa aaaa aaaa aaaa aaaa aaa aaaa aaa aaaa aaa aaa aaa aaa aaaa aaaaa aaaaaa aaaa aaaaa aaa aaaa aaaaa aaa aaaaaaa",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 13.5.w,
                                    fontWeight: FontWeight.w400,
                                    color: H333333,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12.sp),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Rating',
                                    style: TextStyle(
                                      fontSize: 11.5.w,
                                      fontWeight: FontWeight.w400,
                                      color: Neutral90,
                                    ),
                                  ),
                                  SizedBox(height: 8.sp),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star_rate_rounded,
                                        color: Secondary50,
                                        size: 17.w,
                                      ),
                                      SizedBox(width: 4.sp),
                                      Text(
                                        product.rating.toString(),
                                        style: TextStyle(
                                          fontSize: 11.5.w,
                                          fontWeight: FontWeight.w600,
                                          color: H333333,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Terjual',
                                    style: TextStyle(
                                      fontSize: 11.5.w,
                                      fontWeight: FontWeight.w400,
                                      color: Neutral90,
                                    ),
                                  ),
                                  SizedBox(height: 8.sp),
                                  Text(
                                    '${formatLebihDari1000(product.terjual)}',
                                    style: TextStyle(
                                      fontSize: 11.5.w,
                                      fontWeight: FontWeight.w600,
                                      color: H333333,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Dilihat',
                                    style: TextStyle(
                                      fontSize: 11.5.w,
                                      fontWeight: FontWeight.w400,
                                      color: Neutral90,
                                    ),
                                  ),
                                  SizedBox(height: 8.sp),
                                  Text(
                                    '${formatLebihDari1000(product.dilihat)}',
                                    style: TextStyle(
                                      fontSize: 11.5.w,
                                      fontWeight: FontWeight.w600,
                                      color: H333333,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Pengiriman',
                                    style: TextStyle(
                                      fontSize: 11.5.w,
                                      fontWeight: FontWeight.w400,
                                      color: Neutral90,
                                    ),
                                  ),
                                  SizedBox(height: 8.sp),
                                  Row(
                                    children: [
                                      Container(
                                        height: 15.w,
                                        width: 15.w,
                                        child: SvgPicture.asset(
                                          'assets/icons/icon-Kurir-green.svg',
                                          fit: BoxFit.contain,
                                          // height: 14.w,
                                          // width: 14.w,
                                        ),
                                      ),
                                      SizedBox(width: 4.sp),
                                      Text(
                                        shop.kurir == true
                                            ? "Kurir Tersedia"
                                            : "Kurir Belum Tersedia",
                                        style: TextStyle(
                                          fontSize: 11.5.w,
                                          fontWeight: FontWeight.w600,
                                          color: H333333,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 12.sp),
                          CostumDivider(),
                          SizedBox(height: 8.sp),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //
                              Container(
                                child: ImageShop54(
                                  sdhMasukProdukDetail: sdhMasukProdukDetail,
                                  shop: shop,
                                  image: NetworkImage(
                                    shop.imageShop,
                                  ),
                                ),
                              ),
                              SizedBox(width: 11.5.w),

                              Container(
                                // color: Color.fromARGB(255, 245, 170, 255),
                                width: 278.w,
                                height: 65.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(width: 3.sp),
                                        Flexible(
                                          child: Text(
                                            shop.name,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 15.5.w,
                                              fontWeight: FontWeight.w600,
                                              color: H333333,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4.sp),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.place,
                                          color: Warning50,
                                          size: 15.w,
                                        ),
                                        SizedBox(width: 4.sp),
                                        Flexible(
                                          child: Text(
                                            shop.location,
                                            // "Kalimat ini fungsinya seperti Lorem ipsum digunakan untuk test atau pengecekan pada kalimat panjang, mohon jangan dihapus. Karena bisa saja ini berguna lagi kemudian untuk dipakai di berbagai situasi seperti pengaturan overflow text.",
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
                                    SizedBox(height: 4.sp),
                                    Row(
                                      children: [
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
                                        SizedBox(width: 3.5.w),
                                        Flexible(
                                          child: Text(
                                            shop.locationStore,
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 24.sp),
                          Title(title: "Detail Produk"),
                          SizedBox(height: 7.sp),
                          InfoProduk(
                            judul: "Kondisi",
                            info: product.kondisi.toString().split('.').last,
                          ),
                          InfoProduk(
                            judul: "Berat",
                            info: product.berat % 1 == 0
                                ? '${product.berat.toInt()} gr'
                                : '${product.berat.toString()} gr',
                          ),
                          InfoProduk(
                            judul: "Kategori",
                            info: product.kategori,
                          ),
                          SizedBox(height: 24.sp),
                          if (product.deskripsi != null) ...[
                            Title(title: "Deskripsi"),
                            SizedBox(height: 15.sp),
                            Obx(
                              () => Visibility(
                                child: Text(
                                  product.deskripsi!,
                                  maxLines: controller.bacaSelengkapnya.isFalse
                                      ? 5
                                      : null,
                                  overflow: controller.bacaSelengkapnya.isFalse
                                      ? TextOverflow.ellipsis
                                      : null,
                                  style: TextStyle(
                                    fontSize: 11.5.w,
                                    fontWeight: FontWeight.w400,
                                    color: Neutral90,
                                  ),
                                  // textAlign: TextAlign
                                  //     .justify, //tanyakan ini, apakah lebih bagus seperti ini?
                                ),
                              ),
                            ),
                            Obx(
                              () => Visibility(
                                visible: controller.calculateNumberOfLines(
                                            product.deskripsi!) >
                                        5
                                    ? true
                                    : false,
                                child: InkWell(
                                  onTap: () {
                                    controller.bacaSelengkapnya.toggle();
                                  },
                                  child: controller.bacaSelengkapnya.isFalse
                                      ? Row(
                                          children: [
                                            Icon(
                                              Icons.arrow_drop_down_sharp,
                                              color: Primary30,
                                            ),
                                            Text(
                                              "Baca Selengkapnya",
                                              style: TextStyle(
                                                fontSize: 11.5.w,
                                                fontWeight: FontWeight.w600,
                                                color: Primary30,
                                              ),
                                            ),
                                          ],
                                        )
                                      : Row(
                                          children: [
                                            Icon(
                                              Icons.arrow_drop_up_sharp,
                                              color: Primary30,
                                            ),
                                            Text(
                                              "Sembunyikan",
                                              style: TextStyle(
                                                fontSize: 11.5.w,
                                                fontWeight: FontWeight.w600,
                                                color: Primary30,
                                              ),
                                            ),
                                          ],
                                        ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.sp),
                          ],
                          PenilaianPembeli(
                              product: product,
                              randomJumlahKomentar: randomJumlahKomentar),
                          BottonLihatSemuaPenilaian(
                              randomJumlahKomentar: randomJumlahKomentar),
                          SizedBox(height: 80.sp),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 6.sp,
                      right: 6.sp,
                      child: Obx(
                        () => ClipOval(
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                showHeart();
                              },
                              child: Padding(
                                padding: EdgeInsets.all(10.sp),
                                child: Icon(
                                  controller.favoriteProducts[index].value
                                      ? CupertinoIcons.heart_fill
                                      : CupertinoIcons.heart,
                                  size: 22.w,
                                  // Icons.favorite,
                                  color:
                                      controller.favoriteProducts[index].value
                                          ? Favorite
                                          : H333333,
                                ),
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
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              height: 64.w,
              width: Get.width,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow_00(),
                ],
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 8.sp,
                  right: 16.sp,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ClipOval(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.all(8.sp),
                              child: Container(
                                height: 32.w,
                                width: 32.w,
                                child: SvgPicture.asset(
                                  'assets/icons/icon-Message-yellow.svg',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 5.0.sp),
                            child: Container(
                              height: 32.w,
                              width: 32.w,
                            ),
                          ),
                          BottonPembelian(
                            onTap: () {
                              //
                              print("Keranjang");
                            },
                            child: Padding(
                              padding: EdgeInsets.all(1.w),
                              child: Ink(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(32.r),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 25.w,
                                      width: 25.w,
                                      child: SvgPicture.asset(
                                        'assets/icons/iconKeranjang.svg',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    // SizedBox(width: 4.sp),
                                    Text(
                                      "Keranjang",
                                      style: TextStyle(
                                        fontSize: 11.5.w,
                                        fontWeight: FontWeight.w600,
                                        color: Primary50,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          BottonPembelian(
                            onTap: () {
                              //
                              print("Beli Langsung");
                            },
                            child: Center(
                              child: Text(
                                "Beli Langsung",
                                style: TextStyle(
                                  fontSize: 11.5.w,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
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
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 60.sp),
        child: FloatingActionButtonKeranjang(),
      ),
    );
  }
}

class BottonLihatSemuaPenilaian extends GetView<ProductDetailController> {
  const BottonLihatSemuaPenilaian({
    super.key,
    required this.randomJumlahKomentar,
  });

  final int randomJumlahKomentar;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Obx(
        () => InkWell(
          borderRadius: BorderRadius.circular(32.r),
          splashColor: Primary30.withOpacity(0.35),
          onTap: () {
            controller.lihatSemuaPenilaian.toggle();
          },
          child: Ink(
            height: 32.w,
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
            child: Padding(
              padding: EdgeInsets.all(1.w),
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    controller.lihatSemuaPenilaian.isFalse
                        ? Text(
                            "Lihat Semua Penilaian (${randomJumlahKomentar})",
                            style: TextStyle(
                              fontSize: 11.5.w,
                              fontWeight: FontWeight.w400,
                              color: Primary50,
                            ),
                          )
                        : Row(
                            children: [
                              Icon(
                                Icons.keyboard_arrow_up_rounded,
                                color: Primary50,
                                size: 20.sp,
                              ),
                              Text(
                                "Sembunyikan",
                                style: TextStyle(
                                  fontSize: 11.5.w,
                                  fontWeight: FontWeight.w400,
                                  color: Primary50,
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BottonPembelian extends StatelessWidget {
  const BottonPembelian({
    super.key,
    required this.child,
    required this.onTap,
  });

  final Widget child;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(32.r),
        splashColor: Primary30.withOpacity(0.35),
        onTap: onTap,
        child: Ink(
          width: 144.w,
          height: 32.w,
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
          child: child,
        ),
      ),
    );
  }
}

class PenilaianPembeli extends GetView<ProductDetailController> {
  const PenilaianPembeli({
    super.key,
    required this.product,
    required this.randomJumlahKomentar,
  });

  final int randomJumlahKomentar;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: randomJumlahKomentar != 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Title(title: "Penilaian Pembeli"),
          Row(
            children: [
              Icon(
                Icons.star_rate_rounded,
                color: Secondary30,
              ),
              SizedBox(width: 5.w),
              Title(
                title: product.rating.toString(),
              ),
              SizedBox(width: 8.w),
              Text(
                "($randomJumlahKomentar Ulasan)",
                style: TextStyle(
                  fontSize: 11.5.w,
                  fontWeight: FontWeight.w400,
                  color: Neutral90,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              5,
              (index) {
                return Row(
                  children: [
                    Container(
                      width: Get.width / 6.5,
                      height: Get.width / 6.5,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Neutral10,
                          width: 0.5,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Stack(
                        children: [
                          Shimmer_01(),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                //
                              },
                              borderRadius: BorderRadius.circular(4.r),
                              child: Ink(
                                width: 88.0.w,
                                height: 88.0.w,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(4.r),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://picsum.photos/${Random().nextInt(100) + 100}/${Random().nextInt(100) + 100}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Center(
                                  child: index == 4
                                      ? Text(
                                          '+${randomJumlahKomentar * (Random().nextInt(5) + 1)}',
                                          style: TextStyle(
                                            fontSize: 11.5.w,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        )
                                      : SizedBox.shrink(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (index != 4)
                      SizedBox(
                          height: Get.width / 6.5,
                          width: ((Get.width - 32.sp) - (Get.width / 6.5) * 5) /
                              4), // Jarak antara elemen
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 16.sp),
          CostumDivider(),
          SizedBox(height: 16.sp),
          RandomComments(
            product: product,
            randomJumlahKomentar: randomJumlahKomentar,
          ),
        ],
      ),
    );
  }
}

class RandomComments extends GetView<ProductDetailController> {
  const RandomComments({
    super.key,
    required this.product,
    required this.randomJumlahKomentar,
  });

  final int randomJumlahKomentar;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount:
            controller.lihatSemuaPenilaian.isFalse ? 2 : randomJumlahKomentar,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ImageProfileComment(
                    image: NetworkImage(
                      faker.randomGenerator.element(
                        [
                          faker.image.image(
                            random: true,
                          ),
                          'https://picsum.photos/${Random().nextInt(100) + 200}/${Random().nextInt(100) + 200}',
                          'https://picsum.photos/${Random().nextInt(100) + 201}/${Random().nextInt(100) + 201}',
                          'https://picsum.photos/${Random().nextInt(100) + 202}/${Random().nextInt(100) + 202}',
                          'https://picsum.photos/${Random().nextInt(100) + 203}/${Random().nextInt(100) + 203}',
                          'https://picsum.photos/${Random().nextInt(100) + 204}/${Random().nextInt(100) + 204}',
                          'https://picsum.photos/${Random().nextInt(100) + 205}/${Random().nextInt(100) + 205}',
                          'https://picsum.photos/${Random().nextInt(100) + 206}/${Random().nextInt(100) + 206}',
                          'https://picsum.photos/${Random().nextInt(100) + 207}/${Random().nextInt(100) + 207}',
                          'https://picsum.photos/${Random().nextInt(100) + 208}/${Random().nextInt(100) + 208}',
                          'https://picsum.photos/${Random().nextInt(100) + 209}/${Random().nextInt(100) + 209}',
                          'https://picsum.photos/${Random().nextInt(100) + 210}/${Random().nextInt(100) + 210}',
                          'https://xsgames.co/randomusers/assets/avatars/male/${Random().nextInt(78)}.jpg',
                          'https://xsgames.co/randomusers/assets/avatars/male/${Random().nextInt(78) + 0}.jpg',
                          'https://xsgames.co/randomusers/assets/avatars/male/${Random().nextInt(77) + 1}.jpg',
                          'https://xsgames.co/randomusers/assets/avatars/female/${Random().nextInt(78)}.jpg',
                          'https://xsgames.co/randomusers/assets/avatars/female/${Random().nextInt(78) + 0}.jpg',
                          'https://xsgames.co/randomusers/assets/avatars/female/${Random().nextInt(77) + 1}.jpg',
                          'https://xsgames.co/randomusers/assets/avatars/female/${Random().nextInt(76) + 2}.jpg',
                          'https://xsgames.co/randomusers/assets/avatars/female/${Random().nextInt(75) + 3}.jpg',
                          'https://xsgames.co/randomusers/assets/avatars/female/${Random().nextInt(74) + 4}.jpg',
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Title(
                    title: faker.person.name(),
                  ),
                ],
              ),
              SizedBox(height: 4.sp),
              Row(
                children: [
                  RatingBar.builder(
                    itemSize: 22.7.sp,
                    initialRating:
                        faker.randomGenerator.element([3.5, 4, 4.5, 5]),
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemBuilder: (context, _) => Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(width: 6.w),
                  Text(
                    controller.formatTimeDifference(
                      faker.date.dateTimeBetween(
                        DateTime(2019, 8, 1),
                        DateTime.now(),
                      ),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 10.w,
                      fontWeight: FontWeight.w400,
                      color: Neutral90,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.sp),
              RandomCommentFotoProduct(
                product: product,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  Random().nextInt(5),
                  (index) {
                    return Row(
                      children: [
                        Container(
                          width: Get.width / 6.5,
                          height: Get.width / 6.5,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Neutral10,
                              width: 0.5,
                              strokeAlign: BorderSide.strokeAlignOutside,
                            ),
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: Stack(
                            children: [
                              Shimmer_01(),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    //
                                  },
                                  borderRadius: BorderRadius.circular(4.r),
                                  child: Ink(
                                    width: 88.0.w,
                                    height: 88.0.w,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(4.r),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://picsum.photos/${Random().nextInt(100) + 100}/${Random().nextInt(100) + 100}'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (index != 4)
                          SizedBox(
                              height: Get.width / 6.5,
                              width: ((Get.width - 32.sp) -
                                      (Get.width / 6.5) * 5) /
                                  4), // Jarak antara elemen
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 20.sp),
            ],
          );
        },
      ),
    );
  }
}

class RandomCommentFotoProduct extends StatelessWidget {
  const RandomCommentFotoProduct({
    required this.product,
    super.key,
  });

  final Product product;
  @override
  Widget build(BuildContext context) {
    var randomCommentIndex = Random().nextInt(40);

    var selectedComment = '';

    switch (product.kat) {
      case Kat.esKrim:
        selectedComment = randomComment.esKrim.elementAt(randomCommentIndex);
        break;
      case Kat.batik:
        selectedComment = randomComment.batik.elementAt(randomCommentIndex);
        break;
      case Kat.kerudung:
        selectedComment = randomComment.kerudung.elementAt(randomCommentIndex);
        break;
      case Kat.buah:
        selectedComment = randomComment.buah.elementAt(randomCommentIndex);
        break;
      case Kat.dri:
        selectedComment = randomComment.dri.elementAt(randomCommentIndex);
        break;
      case Kat.travel:
        selectedComment = randomComment.travel.elementAt(randomCommentIndex);
        break;
      case Kat.fotografi:
        selectedComment = randomComment.fotografi.elementAt(randomCommentIndex);
        break;
      case Kat.pakaian:
        selectedComment = randomComment.pakaian.elementAt(randomCommentIndex);
        break;
    }
    return Visibility(
      visible: selectedComment != '',
      child: Column(
        children: [
          Text(
            selectedComment,
            style: TextStyle(
              fontSize: 11.5.w,
              fontWeight: FontWeight.w400,
              color: H333333,
            ),
          ),
          SizedBox(height: 16.sp),
        ],
      ),
    );
  }
}

class CostumDivider extends StatelessWidget {
  const CostumDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: Get.width,
      color: D9D9D9,
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 13.5.w,
        fontWeight: FontWeight.w600,
        color: H333333,
      ),
    );
  }
}
