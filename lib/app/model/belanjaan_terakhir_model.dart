class BelanjaanTerakhir {
  final String name;
  final String image;
  final double price;
  final double priceDicoret;
  final double rating;

  BelanjaanTerakhir(
      {required this.name,
      required this.image,
      required this.price,
      required this.priceDicoret,
      required this.rating});
}

class BelanjaanTerakhirList {
  final List<BelanjaanTerakhir> belanjaanTerakhirs = [
    BelanjaanTerakhir(
      name:
          "Wayang Kulit Gunungan Kayon Standar Dalang / Gunungan Wayang Ukuran 70cm / Wayang Kulit Asli",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/2/26/COLLECTIE_TROPENMUSEUM_Wajangfiguur_van_karbouwenhuid_voorstellende_een_pauzeteken_TMnr_4551-27.jpg",
      price: 679000,
      priceDicoret: 752500,
      rating: 4.7,
    ),
    BelanjaanTerakhir(
      name: "Terjemah Rasa - Fahruddin Faiz",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_eFO7d0I0b_GMNLE_eygjDWZ-mHAOCxGOXAVaYpqyQDKd3TOOHdV3IDBumTctDnE2BRQ&usqp=CAU",
      price: 61000,
      priceDicoret: 72000,
      rating: 4.4,
    ),
    BelanjaanTerakhir(
      name: "Topeng Hahoe Mask (PO)",
      image:
          "https://cdnx.kincir.com/insecure/rs:fill:764:400/aHR0cHM6Ly9raW5jaXJpbWFnZS5zMy1hcC1zb3V0aGVhc3QtMS5hbWF6b25hd3MuY29tL3Byb2R1Y3Rpb24vMjAyMi0wNi8xNmJ5OS90b3BlbmctaGFob2V-MjEwZTM1NjYtZjBiNC00MDRhLTljNWUtYTU3MGNkN2Q5MjYzLmpwZw==",
      price: 95000,
      priceDicoret: 120000,
      rating: 4.7,
    ),
    BelanjaanTerakhir(
      name: "Balung Kethek / Loncis rasa Gurih 500gram",
      image:
          "https://www.gotravelly.com/assets/img/culinary/gallery/1108/7c0862757bb080cf64d91b93544ebf32.jpg",
      price: 26000,
      priceDicoret: 31000,
      rating: 4.9,
    ),
  ];
}
