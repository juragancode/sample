class FilterLokasi {
  late String? title;

  FilterLokasi({
    required this.title,
  });
}

class FilterLokasiList {
  final List<FilterLokasi> filter_lokasis = [
    FilterLokasi(
      title: "Terdekat",
    ),
    FilterLokasi(
      title: "Kota Surakarta",
    ),
    FilterLokasi(
      title: "Kab. Sukoharjo",
    ),
    FilterLokasi(
      title: "Kab. Boyolali",
    ),
    FilterLokasi(
      title: "Kab. Karanganyar",
    ),
    FilterLokasi(
      title: "Kab. Sragen",
    ),
    FilterLokasi(
      title: "Kab. Klaten",
    ),
  ];
}
