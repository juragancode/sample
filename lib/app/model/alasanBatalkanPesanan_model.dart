class Alasan {
  final String alasan;

  Alasan({
    required this.alasan,
  });
}

class AlasanList {
  final List<Alasan> alasans = [
    Alasan(
      alasan: "Ingin memesan produk lain dari toko ini",
    ),
    Alasan(
      alasan: "Ingin mengubah jumlah item",
    ),
    Alasan(
      alasan: "Ingin mengubah warna item",
    ),
    Alasan(
      alasan: "Ingin mengubah ukuran item",
    ),
    Alasan(
      alasan: "Salah memesan produk",
    ),
    Alasan(
      alasan: "Tertarik membeli produk serupa di tempat lain",
    ),
    Alasan(
      alasan: "Saya berubah pikiran, lain kali saja",
    ),
    Alasan(
      alasan: "Lainnya",
    ),
  ];
}
