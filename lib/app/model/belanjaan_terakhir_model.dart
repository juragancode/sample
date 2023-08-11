class BelanjaanTerakhir_ {
  final String name;
  final String image;
  final double price;
  final double priceDicoret;
  final double rating;

  BelanjaanTerakhir_(
      {required this.name,
      required this.image,
      required this.price,
      required this.priceDicoret,
      required this.rating});
}

class BelanjaanTerakhirList {
  final List<BelanjaanTerakhir_> belanjaanTerakhirs = [
    BelanjaanTerakhir_(
      name:
          "Wayang Kulit Gunungan Kayon Standar Dalang / Gunungan Wayang Ukuran 70cm / Wayang Kulit Asli",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/2/26/COLLECTIE_TROPENMUSEUM_Wajangfiguur_van_karbouwenhuid_voorstellende_een_pauzeteken_TMnr_4551-27.jpg",
      price: 679000,
      priceDicoret: 752500,
      rating: 4.7,
    ),
    BelanjaanTerakhir_(
      name: "Terjemah Rasa - Fahruddin Faiz",
      image:
          "https://images.tokopedia.net/img/cache/700/VqbcmM/2021/8/12/ce29ae61-798d-4a5b-8e0a-8ef20f50b448.jpg",
      price: 61000,
      priceDicoret: 72000,
      rating: 4.4,
    ),
    BelanjaanTerakhir_(
      name: "Topeng Hahoe Mask (PO)",
      image:
          "https://dailyspin.id/wp-content/uploads/2022/06/Arti-Topeng-Money-Heist-Korea.jpg",
      price: 95000,
      priceDicoret: 120000,
      rating: 4.7,
    ),
    BelanjaanTerakhir_(
      name: "Balung Kethek / Loncis rasa Gurih 500gram",
      image:
          "https://www.gotravelly.com/assets/img/culinary/gallery/1108/7c0862757bb080cf64d91b93544ebf32.jpg",
      price: 26000,
      priceDicoret: 31000,
      rating: 4.9,
    ),
  ];
}
