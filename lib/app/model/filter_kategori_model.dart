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
}
