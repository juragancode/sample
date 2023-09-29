import 'package:g_a_s_app_rekadigi/app/routes/app_pages.dart';
import 'package:get/get.dart';

class PersonalAccount {
  final String title;
  final String svg;
  final int size;
  late Function()? onTap;

  PersonalAccount({
    required this.title,
    required this.svg,
    required this.size,
    this.onTap,
  });
}

class PersonalAccountList {
  final List<PersonalAccount> n1 = [
    PersonalAccount(
      size: 16,
      title: "Riwayat Transaksi",
      svg: "assets/icons/Personal/Riwayat-Transaksi.svg",
      onTap: () {
        Get.toNamed(Routes.KERANJANG);
      },
    ),
    PersonalAccount(
      size: 22,
      title: "Kupon Belanja",
      svg: "assets/icons/icon-Buat-Promo.svg",
      // onTap: Get.toNamed(Routes.KERANJANG),
    ),
    PersonalAccount(
      size: 21,
      title: "Wishlist",
      svg: "assets/icons/Personal/Wishlist.svg",
      // onTap: Get.toNamed(Routes.KERANJANG),
    ),
    PersonalAccount(
      size: 18,
      title: "Notifikasi",
      svg: "assets/icons/Personal/Notifikasi.svg",
      // onTap: Get.toNamed(Routes.KERANJANG),
    ),
    PersonalAccount(
      size: 15,
      title: "Alamat Saya",
      svg: "assets/icons/Personal/Alamat-Saya.svg",
      // onTap: Get.toNamed(Routes.KERANJANG),
    ),
    PersonalAccount(
      size: 20,
      title: "Metode Pembayaran",
      svg: "assets/icons/Personal/Metode-Pembayaran.svg",
      // onTap: Get.toNamed(Routes.KERANJANG),
    ),
  ];

  final List<PersonalAccount> n2 = [
    PersonalAccount(
      size: 20,
      title: "Pengaturan",
      svg: "assets/icons/Personal/Pengaturan.svg",
      // onTap: Get.toNamed(Routes.KERANJANG),
    ),
    PersonalAccount(
      size: 20,
      title: "FAQs",
      svg: "assets/icons/Personal/FAQs.svg",
      // onTap: Get.toNamed(Routes.KERANJANG),
    ),
  ];
}
