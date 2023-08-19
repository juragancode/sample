import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../constant/colors.dart';
import '../../../model/toko_model.dart';

import '../../../modules/storeDetail/widgets/FloatingActionButtonKeranjang.dart';
import '../../../widgets/Decoration/BoxOpacity.dart';
import '../../../widgets/Decoration/Shimmer.dart';
import '../controllers/product_detail_controller.dart';
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

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      backgroundColor: BackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
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
                      Container(
                        height: 1,
                        width: Get.width,
                        color: D9D9D9,
                      ),
                      SizedBox(height: 8.sp),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //
                          ImageShop54(
                            sdhMasukProdukDetail: sdhMasukProdukDetail,
                            shop: shop,
                            image: NetworkImage(
                              shop.imageShop,
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
                      Title(title: "Penilaian Pembeli"),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rate_rounded,
                            color: Secondary30,
                          ),
                          SizedBox(width: 5.w),
                          Title(title: product.rating.toString()),
                          SizedBox(width: 5.w),
                        ],
                      ),
                      SizedBox(height: 500.w),
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
                            controller
                                .toggleFavoriteProductInStoreDetail(index);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.sp),
                            child: Icon(
                              controller.favoriteProducts[index].value
                                  ? CupertinoIcons.heart_fill
                                  : CupertinoIcons.heart,
                              size: 22.w,
                              // Icons.favorite,
                              color: controller.favoriteProducts[index].value
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
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 120.sp),
        child: FloatingActionButtonKeranjang(),
      ),
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
