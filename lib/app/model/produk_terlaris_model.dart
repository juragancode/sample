class ProductTerlaris {
  final String name;
  final String image;
  final double price;
  final double priceDicoret;
  final double rating;

  ProductTerlaris(
      {required this.name,
      required this.image,
      required this.price,
      required this.priceDicoret,
      required this.rating});
}

class ProductTerlarisList {
  final List<ProductTerlaris> productTerlariss = [
    ProductTerlaris(
      name:
          "BEFAST - ZEC OOTD Wanita Setelan SIERYA / Picato Set / Set Marsmellow / Set Wanita Terbaru / Jumpsuit Wanita Sexy",
      image:
          "https://down-id.img.susercontent.com/file/ef86d686a79e3f57631b342acd701d7b",
      price: 139000,
      priceDicoret: 155000,
      rating: 4.9,
    ),
    ProductTerlaris(
      name:
          "Kacamata Anti Radiasi Ganzt Kaca Mata Wanita Pria Frame Sunglasses Lensa Transparan Fashion Import",
      image:
          "https://down-id.img.susercontent.com/file/40b569dc48f44a7b677ef7b960b6420e",
      price: 59000,
      priceDicoret: 75000,
      rating: 4.7,
    ),
    ProductTerlaris(
      name: "Macaroni Cuck Keripik Usus Pedas Daun Jeruk Kemasan Reguler 80gr",
      image:
          "https://down-id.img.susercontent.com/file/sg-11134201-23010-84eqcg0jd7lv0b",
      price: 9000,
      priceDicoret: 12500,
      rating: 4.6,
    ),
    ProductTerlaris(
      name: "Sepatu Lukis Custom di Magento Art Galery",
      image:
          "https://assets-a1.kompasiana.com/items/album/2018/07/13/20225311-154812808427383-5628696890724843520-n-5b481d76ab12ae6b775966b2.jpg",
      price: 870000,
      priceDicoret: 1200000,
      rating: 4.9,
    ),
  ];
}
