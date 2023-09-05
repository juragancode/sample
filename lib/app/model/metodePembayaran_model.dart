class MetodePembayaran {
  final String name;
  final String image;

  MetodePembayaran({
    required this.name,
    required this.image,
  });
}

class MetodePembayaranList {
  final List<MetodePembayaran> metodePembayaran = [
    MetodePembayaran(
      name: "",
      image: "",
    ),
    MetodePembayaran(
      name: "QRIS",
      image: "assets/icons/QRIS.svg",
    ),
    MetodePembayaran(
      name: "COD",
      image: "assets/icons/COD.svg",
    ),
  ];
}
