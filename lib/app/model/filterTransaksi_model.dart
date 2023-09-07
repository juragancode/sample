class FilterTransaksi {
  late String? title;

  FilterTransaksi({
    required this.title,
  });
}

class FilterTransaksiList {
  final List<FilterTransaksi> filters = [
    FilterTransaksi(
      title: "Semua Riwayat",
    ),
    FilterTransaksi(
      title: "Diproses",
    ),
    FilterTransaksi(
      title: "Dikirim",
    ),
    FilterTransaksi(
      title: "Sampai Tujuan",
    ),
    FilterTransaksi(
      title: "Selesai",
    ),
    FilterTransaksi(
      title: "Dibatalkan",
    ),
  ];
}
