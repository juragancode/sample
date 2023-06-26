class ProductPromo {
  final String name;
  final String image;
  final double price;
  final double priceDicoret;
  final double rating;

  ProductPromo(
      {required this.name,
      required this.image,
      required this.price,
      required this.priceDicoret,
      required this.rating});
}

class ProductPromoList {
  final List<ProductPromo> productPromos = [
    ProductPromo(
      name:
          "Baju Dewasa Wanita - Build Up Sweater Wanita Size M - Xxl - Crewneck Wanita Kekinian - Sweater Wanita Tebal",
      image:
          "https://lzd-img-global.slatic.net/g/p/755fedc6a4d647169d8ad77bb7bf12fa.jpg_720x720q80.jpg",
      price: 38900,
      priceDicoret: 43900,
      rating: 4.5,
    ),
    ProductPromo(
      name: "Durian Semarang",
      image:
          "https://img-cdn.medkomtek.com/8tRsP6EUTtU5GofWLU5RnnSXx0g=/730x411/smart/filters:quality(75):strip_icc():format(webp)/article/1XiQkBE6grrG4AMBIWmcT/original/070579500_1565412843-11-Manfaat-Durian-Meski-Sering-Dituding-Picu-Kolesterol-Tinggi-By-Taveesak-Srisomthavil-Shutterstock.jpg",
      price: 125000,
      priceDicoret: 135000,
      rating: 4.2,
    ),
    ProductPromo(
      name:
          "Batik Pekalongan Baju Kemeja Batik Pria Cowok Lengan Pendek Modern Premium Original",
      image:
          "https://media.karousell.com/media/photos/products/2022/6/29/hem_batik_pekalongan_1656489613_3f4b35c1_progressive",
      price: 80000,
      priceDicoret: 95000,
      rating: 4.7,
    ),
    ProductPromo(
      name: "Sepatu Lukis Custom di Magento Art Galery",
      image:
          "https://assets-a1.kompasiana.com/items/album/2018/07/13/20225311-154812808427383-5628696890724843520-n-5b481d76ab12ae6b775966b2.jpg",
      price: 870000,
      priceDicoret: 1200000,
      rating: 4.9,
    ),
  ];
}
