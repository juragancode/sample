class FilterKategori {
  late String? title;

  FilterKategori({
    required this.title,
  });
}

class FilterKategoriList {
  final List<FilterKategori> filter_kategoris = [
    FilterKategori(
      title: "Fashion Pria",
    ),
    FilterKategori(
      title: "Fashion Wanita",
    ),
    FilterKategori(
      title: "Fashion Anak",
    ),
    FilterKategori(
      title: "Olahraga",
    ),
  ];

  final List<FilterKategori> tipe_pengiriman = [
    FilterKategori(
      title: "Ambil di Tempat",
    ),
    FilterKategori(
      title: "Pengiriman Toko",
    ),
    FilterKategori(
      title: "Kurir",
    ),
  ];

  final List<FilterKategori> kondisi = [
    FilterKategori(
      title: "Baru",
    ),
    FilterKategori(
      title: "Bekas",
    ),
  ];

  final List<FilterKategori> lainnya = [
    FilterKategori(
      title: "Ready Stock",
    ),
    FilterKategori(
      title: "Pre-Order",
    ),
  ];
}
