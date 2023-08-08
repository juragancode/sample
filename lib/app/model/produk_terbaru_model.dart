class ProductTerbaru {
  final String name;
  final String shopName;
  final String city;
  final String image;
  final double price;
  final double priceDicoret;
  final double rating;
  final bool favorite;

  ProductTerbaru({
    required this.name,
    required this.city,
    required this.shopName,
    required this.image,
    required this.price,
    required this.priceDicoret,
    required this.rating,
    required this.favorite,
  });
}

class ProductTerbaruList {
  final List<ProductTerbaru> productTerbarus = [
    ProductTerbaru(
      name: "Serumpun Peony Autumn 9 Putik",
      shopName: "Toko Kembang Cempaka",
      city: "Garut",
      image:
          "https://down-id.img.susercontent.com/file/id-11134207-7qul2-lhek5ral92eqb3",
      price: 21000,
      priceDicoret: 26000,
      rating: 4.7,
      favorite: true,
    ),
    ProductTerbaru(
      name: "Lengkeng Bangkok per 500gr Longan Thailand",
      shopName: "Toko Bagas",
      city: "Boyolali",
      image:
          "https://down-id.img.susercontent.com/file/c7f9be1627694babc4e6d9d7b6df5de1",
      price: 25000,
      priceDicoret: 30000,
      rating: 4.5,
      favorite: false,
    ),
    ProductTerbaru(
      name: "My Aksa Batik Pria Kemeja Panjang Semi Sutra Furing Aziz Amara",
      shopName: "Bernita Fashion",
      city: "Bandung",
      image:
          "https://down-id.img.susercontent.com/file/a201cb820ac3c4617ece89ebafc01bff",
      price: 399000,
      priceDicoret: 419000,
      rating: 4.8,
      favorite: false,
    ),
    ProductTerbaru(
      name:
          "Handphone Samsung Galaxy S23 Ultra 12GB+256GB - 12/512GB - 12/1TB 5G Garansi Resmi Samsung S23 Plus 8GB+512GB - 8GB+256GB",
      shopName: "Noval Tech",
      city: "Semarang",
      image:
          "https://down-id.img.susercontent.com/file/id-11134207-7qul6-liu6yo90a61t25",
      price: 19999000,
      priceDicoret: 20000000,
      rating: 4.7,
      favorite: false,
    ),
    // ProductTerbaru(
    //   name: "Sepatu Lukis Custom di Magento Art Galery",
    //   shopName: "Wawan Art Galery",
    //   city: "Solo",
    //   image:
    //       "https://assets-a1.kompasiana.com/items/album/2018/07/13/20225311-154812808427383-5628696890724843520-n-5b481d76ab12ae6b775966b2.jpg",
    //   price: 870000,
    //   priceDicoret: 1200000,
    //   rating: 4.9,
    //   favorite: false,
    // ),
  ];
}
