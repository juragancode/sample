import 'package:g_a_s_app_rekadigi/app/routes/app_pages.dart';
import 'package:get/get.dart';

class PersonalAccount {
  final String title;
  final String svg;
  late Function()? onTap;

  PersonalAccount({
    required this.title,
    required this.svg,
    this.onTap,
  });
}

class PersonalAccountList {
  final List<PersonalAccount> n1 = [
    PersonalAccount(
      title: "Riwayat Transaksi",
      svg: "assets/icons/Personal/Riwayat-Transaksi.svg",
      onTap: () {
        Get.toNamed(Routes.KERANJANG);
      },
    ),
    PersonalAccount(
      title: "Kupon Belanja",
      svg: "assets/icons/Personal/Kupon-Belanja.svg",
      // onTap: Get.toNamed(Routes.KERANJANG),
    ),
    PersonalAccount(
      title: "Wishlist",
      svg: "assets/icons/Personal/Wishlist.svg",
      // onTap: Get.toNamed(Routes.KERANJANG),
    ),
    PersonalAccount(
      title: "Notifikasi",
      svg: "assets/icons/Personal/Notifikasi.svg",
      // onTap: Get.toNamed(Routes.KERANJANG),
    ),
    PersonalAccount(
      title: "Alamat Saya",
      svg: "assets/icons/Personal/Alamat-Saya.svg",
      // onTap: Get.toNamed(Routes.KERANJANG),
    ),
    PersonalAccount(
      title: "Metode Pembayaran",
      svg: "assets/icons/Personal/Metode-Pembayaran.svg",
      // onTap: Get.toNamed(Routes.KERANJANG),
    ),
  ];

  final List<PersonalAccount> n2 = [
    PersonalAccount(
      title: "Pengaturan",
      svg: "assets/icons/Personal/Pengaturan.svg",
      // onTap: Get.toNamed(Routes.KERANJANG),
    ),
    PersonalAccount(
      title: "FAQs",
      svg: "assets/icons/Personal/FAQs.svg",
      // onTap: Get.toNamed(Routes.KERANJANG),
    ),
  ];
}
