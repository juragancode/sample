import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KeranjangController extends GetxController {
  void showConfirmationDialog() {
    Get.defaultDialog(
      title: "Konfirmasi",
      content: Text("Apakah anda yakin ingin menghapus keranjang ini?"),
      textCancel: "Tidak",
      textConfirm: "Ya",
      onConfirm: () {
        // Aksi yang akan diambil jika user memilih Ya
        // Contoh: Hapus keranjang
        Get.back(); // Tutup dialog setelah aksi selesai
      },
      onCancel: () {
        // Aksi yang akan diambil jika user memilih Tidak
        Get.back(); // Tutup dialog setelah aksi selesai
      },
    );
  }
}
