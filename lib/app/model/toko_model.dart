class Shop {
  final String name;
  final String nameShop;
  final String location;
  final double rating;
  final String imageShop;
  final List product;

  Shop({
    required this.name,
    required this.nameShop,
    required this.location,
    required this.rating,
    required this.imageShop,
    required this.product,
  });
}

class Product {
  final String productName;
  final String productImage;
  final double price;
  final double priceDicoret;
  final double rating;
  final bool favorite;

  Product(
      {required this.productName,
      required this.productImage,
      required this.price,
      required this.priceDicoret,
      required this.rating,
      required this.favorite});
}

class ShopList {
  final List<Shop> shops = [
    Shop(
      name: "Rekadigi Shop",
      nameShop: "Rekadigi Office",
      location: "Kota Surakarta",
      rating: 4.9,
      imageShop: "Rekadigi.jpg",
      product: [
        Product(
          productName: 'UX Research',
          productImage: 'UX-Design-.jpeg',
          price: 4975000,
          priceDicoret: 5000000,
          favorite: false,
          rating: 4.8,
        ),
        Product(
          productName: 'Mobile App',
          productImage: 'apps.jpg',
          price: 45000000,
          priceDicoret: 50000000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName: 'MPV',
          productImage: 'project-and-process.jpg',
          price: 35000000,
          priceDicoret: 40000000,
          favorite: false,
          rating: 4.9,
        ),
        Product(
          productName: 'Custom Software',
          productImage: 'coding.jpg',
          price: 75000000,
          priceDicoret: 80000000,
          favorite: false,
          rating: 4.9,
        ),
        Product(
          productName: 'Maintenance',
          productImage: 'server-maintenance.png',
          price: 4900000,
          priceDicoret: 5000000,
          favorite: false,
          rating: 4.7,
        ),
      ],
    ),
    Shop(
      name: "Istana Buah",
      nameShop: "Istana Buah & Juice",
      location: "Kota Surakarta",
      rating: 4.6,
      imageShop: "istanaBuah.png",
      product: [
        Product(
          productName:
              'Mangga harum manis | mangga harum manis super | mangga arum manis - 1 kg',
          productImage: '7334c087-0be2-4192-82e1-431ce0b17a8e.jpg',
          price: 47000,
          priceDicoret: 53000,
          favorite: false,
          rating: 4.8,
        ),
        Product(
          productName: 'Melon SUPER Orange f1 fresh/1pcs',
          productImage: 'af788f6d-425a-45dd-8a8e-aaf9f0df4969.jpg',
          price: 67000,
          priceDicoret: 75000,
          favorite: false,
          rating: 4.9,
        ),
        Product(
          productName: 'Strawberry Sweetheart Hidroponik 125 g 125 gram',
          productImage: '15beae0f-e8a0-4e07-9754-07c7e7093159.jpg',
          price: 17400,
          priceDicoret: 21500,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName: 'Pisang Ambon 1 Sisir',
          productImage: '6cc38a0a-3b1f-4037-a194-0eb407d66b70.jpg',
          price: 26000,
          priceDicoret: 30000,
          favorite: false,
          rating: 4.7,
        ),
      ],
    ),
    Shop(
      name: "Batik Prabuseno",
      nameShop: "Store Batik Prabuseno Praha Palgunadi",
      location: "Kota Surakarta",
      rating: 4.8,
      imageShop: "BatikPrabuseno.png",
      product: [
        Product(
          productName: 'Batik Wanita Sackdress Batik Daun Isi',
          productImage: 'batik wanita1.jpg',
          price: 324500,
          priceDicoret: 350000,
          favorite: false,
          rating: 4.9,
        ),
        Product(
          productName: 'Batik Wanita Sackdress Batik Rangrang',
          productImage: 'batik wanita2.jpg',
          price: 349500,
          priceDicoret: 375000,
          favorite: false,
          rating: 4.8,
        ),
        Product(
          productName:
              'Batik Pria Lengan Pendek - Merah - Blouse 951529-KWD92020S',
          productImage: 'batik pria1.jpg',
          price: 255000,
          priceDicoret: 275000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName: 'Batik Anak (Pria) Lengan Pendek - Tikar Kupu',
          productImage: 'batik anak pria.jpg',
          price: 99000,
          priceDicoret: 125000,
          favorite: false,
          rating: 4.7,
        ),
      ],
    ),
    Shop(
      name: "Mixue - Ice Cream & Tea",
      nameShop: "MIXUE Solo",
      location: "Kota Surakarta",
      rating: 4.9,
      imageShop: "mixue-logo-6AE8953ADB-seeklogo.com.png",
      product: [
        Product(
          productName: 'Mixue Mango Sundae',
          productImage: 'Mango Sundae.jpg',
          price: 17650,
          priceDicoret: 20000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName: 'Mixue Lucky Sundae Strawberry Ice Cream',
          productImage: 'Lucky Sundae Strawberry Ice Cream.jpg',
          price: 17650,
          priceDicoret: 20000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName: 'Mixue Berrybean Sundae Ice Cream',
          productImage: 'Berrybean Sundae Ice Cream.jpg',
          price: 17650,
          priceDicoret: 20000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName: 'Mixue Brown Sugar Pearl Milk Tea',
          productImage: 'Brown Sugar Pearl Milk Tea.jpg',
          price: 19950,
          priceDicoret: 21000,
          favorite: false,
          rating: 4.7,
        ),
      ],
    ),
    Shop(
      name: "Ria Busana",
      nameShop: "Pusat Grosir Solo (PGS)",
      location: "Kota Surakarta",
      rating: 4.7,
      imageShop: "Ria Busana.png",
      product: [
        Product(
          productName:
              'Ria Busana - Income - Jacket Jeans Bordir Dewasa Wanita Art. Bear',
          productImage: 'id-11134201-23020-bstk7mphpynv67.jpg',
          price: 147500,
          priceDicoret: 165000,
          favorite: false,
          rating: 4.9,
        ),
        Product(
          productName:
              'Ria Busana - Belle - Tshirt Oversize Lengan Panjang Wanita Art. Flower Girl',
          productImage: 'sg-11134201-22120-wt7v5uu55rkv5c.jpg',
          price: 61000,
          priceDicoret: 65000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName:
              'Ria Busana - Belle - Tanktop Dewasa Wanita Art. 7192-TALISDG',
          productImage: 'sg-11134201-22120-jaq7fg2v2tkv58.jpg',
          price: 36000,
          priceDicoret: 40000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName:
              'Ria Busana - Umama - Kerudung Segiempat Art. Basicvoal 110x110',
          productImage: 'sg-11134201-23010-wzevt11xkdmvc7.jpg',
          price: 19000,
          priceDicoret: 24500,
          favorite: false,
          rating: 4.8,
        ),
      ],
    ),
  ];
}
