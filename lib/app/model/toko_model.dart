import 'dart:math';

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
      imageShop:
          "https://images.glints.com/unsafe/glints-dashboard.s3.amazonaws.com/company-logo/22229f467768cbf923eeac03f79932c1.png",
      product: [
        Product(
          productName: 'UX Research',
          productImage:
              'https://www.dreambox.id/wp-content/uploads/2022/06/7.jpg',
          price: 4975000,
          priceDicoret: 5000000,
          favorite: false,
          rating: 4.8,
        ),
        Product(
          productName: 'Mobile App',
          productImage:
              'https://www.techrepublic.com/wp-content/uploads/2022/06/top-development-frameworks-770x513.jpeg',
          price: 45000000,
          priceDicoret: 50000000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName: 'MPV',
          productImage:
              'https://innovecs.com/wp-content/uploads/2020/11/building-software-development-teams.jpg',
          price: 35000000,
          priceDicoret: 40000000,
          favorite: false,
          rating: 4.9,
        ),
        Product(
          productName: 'Custom Software',
          productImage:
              'https://www.centerklik.com/wp-content/uploads/2019/04/Software-Developer-engineer.jpg',
          price: 75000000,
          priceDicoret: 80000000,
          favorite: false,
          rating: 4.9,
        ),
        Product(
          productName: 'Maintenance',
          productImage:
              'https://images.easytechjunkie.com/man-maintaining-network-server.jpg',
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
      imageShop:
          "https://media.licdn.com/dms/image/D5603AQG9eU5Z6b7-tw/profile-displayphoto-shrink_800_800/0/1678420203127?e=2147483647&v=beta&t=ZJIfQEalSHNKIfFCp3VoP-cwNHA2c_5U2QFHmSxoBIA",
      product: [
        Product(
          productName:
              'Mangga harum manis | mangga harum manis super | mangga arum manis - 1 kg',
          productImage:
              'https://www.tanamanmart.com/wp-content/uploads/2017/02/harum-manis-1.jpg',
          price: 47000,
          priceDicoret: 53000,
          favorite: false,
          rating: 4.8,
        ),
        Product(
          productName: 'Melon SUPER Orange f1 fresh/1pcs',
          productImage:
              'https://awsimages.detik.net.id/community/media/visual/2019/09/10/b2001cfb-54e9-49d0-9e84-c9056b9693a3.jpeg?w=1200',
          price: 67000,
          priceDicoret: 75000,
          favorite: false,
          rating: 4.9,
        ),
        Product(
          productName: 'Strawberry Sweetheart Hidroponik 125 g 125 gram',
          productImage:
              'https://kabarpemalang.id/wp-content/uploads/2021/05/96-Wisata-Pemalang-Kebun-Strawberry-Karangsari-1.jpg',
          price: 17400,
          priceDicoret: 21500,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName: 'Pisang Ambon 1 Sisir',
          productImage:
              'https://faktualid.com/wp-content/uploads/2021/10/banana.jpg',
          price: 26000,
          priceDicoret: 30000,
          favorite: false,
          rating: 4.7,
        ),
      ],
    ),
    Shop(
      name: "Awesome Travel",
      nameShop: "Perjalanan Luar Negeri",
      location: "Kota Surakarta",
      rating: 4.9,
      imageShop:
          "https://picsum.photos/id/${Random().nextInt(999) + 1}/300/300",
      product: [
        Product(
          productName: 'Perjalanan Luar Negeri Terbaik',
          productImage:
              "https://picsum.photos/id/${Random().nextInt(999) + 2}/300/300",
          price: 4900000,
          priceDicoret: 5600000,
          favorite: false,
          rating: 4.9,
        ),
        Product(
          productName: 'Perjalanan Luar Negeri 15 Tempat',
          productImage:
              "https://picsum.photos/id/${Random().nextInt(999) + 2}/300/300",
          price: 20000000,
          priceDicoret: 22400000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName: 'Perjalanan Luar Negeri 1 Negara',
          productImage:
              "https://picsum.photos/id/${Random().nextInt(999) + 3}/300/300",
          price: 35700000,
          priceDicoret: 41200000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName: 'Perjalanan Luar Negeri 5 Negara',
          productImage:
              "https://picsum.photos/id/${Random().nextInt(999) + 4}/300/300",
          price: 49999990,
          priceDicoret: 51000000,
          favorite: false,
          rating: 4.8,
        ),
      ],
    ),
    Shop(
      name: "Batik Prabuseno",
      nameShop: "Store Batik Prabuseno Praha Palgunadi",
      location: "Kota Surakarta",
      rating: 4.8,
      imageShop:
          "https://asc-public-id.oss-ap-southeast-5.aliyuncs.com/sellerapp/400704333714/lsa-logo-679983127-439D84D1-49B7-498B-843B-F51798C1B64B.png",
      product: [
        Product(
          productName: 'Batik Wanita Sackdress Batik Daun Isi Adikusuma',
          productImage:
              'https://www.matahari.com/media/catalog/product/7/3/73884876_1.jpg?optimize=medium&bg-color=255,255,255&fit=bounds&height=621&width=485&canvas=485:621',
          price: 324500,
          priceDicoret: 350000,
          favorite: false,
          rating: 4.9,
        ),
        Product(
          productName: 'Batik Wanita Sackdress Batik Parang Arjunaweda',
          productImage:
              'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/MTA-20715323/batik_arjunaweda_batik_arjunaweda_28163061_sackdress_parang_matahari__wanita_-_orange_full01_l1ydk9q6.jpeg',
          price: 349500,
          priceDicoret: 375000,
          favorite: false,
          rating: 4.8,
        ),
        Product(
          productName: 'My Aksa Batik Anak Perempuan Dress Laura Lionel',
          productImage:
              'https://dynamic.zacdn.com/CKeH4AQPbf5slAADGTXmTNSUCRY=/filters:quality(70):format(webp)/https://static-id.zacdn.com/p/my-aksa-fit-everywhere-1749-7371793-4.jpg',
          price: 255000,
          priceDicoret: 275000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName:
              'Spesial Diskon - Batik Anak (Pria) Lengan Pendek - Tikar Kupu',
          productImage:
              'https://www.matahari.com/media/catalog/product/3/3/33039640_1_1.jpg?optimize=medium&bg-color=255,255,255&fit=bounds&height=379&width=293&canvas=293:379',
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
      imageShop:
          "https://seeklogo.com/images/M/mixue-logo-6AE8953ADB-seeklogo.com.png",
      product: [
        Product(
          productName: 'Mixue Mango Sundae',
          productImage:
              'https://assets-pergikuliner.com/5P1Df9dySYsMy1plvfN_BKai0S8=/fit-in/1366x768/smart/filters:no_upscale()/https://assets-pergikuliner.com/uploads/image/picture/2349249/picture-1636212053.jpg',
          price: 17650,
          priceDicoret: 20000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName: 'Mixue Lucky Sundae Strawberry Ice Cream',
          productImage:
              'https://d1sag4ddilekf6.cloudfront.net/compressed_webp/items/IDITE20220210064302331775/detail/menueditor_item_9d2a228f20f240ecb8eb61e08520fc33_1646304201208694890.webp',
          price: 17650,
          priceDicoret: 20000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName: 'Mixue Berrybean Sundae Ice Cream',
          productImage:
              'https://images.tokopedia.net/img/JFrBQq/2022/9/14/5c3fe4bf-4204-436a-a205-676b0620e96d.jpg',
          price: 17650,
          priceDicoret: 20000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName: 'Mixue Brown Sugar Pearl Milk Tea',
          productImage:
              'https://www.blibli.com/friends-backend/wp-content/uploads/2023/06/B600375-2-Brown-Sugar-Pearl-Milk-Tea-%E2%80%93-Rp-21000.jpg',
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
      imageShop:
          "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/mlogo/RIB-60045-71b0422c-b2eb-40ee-9e41-99dc7135ccb3.png",
      product: [
        Product(
          productName:
              'Ria Busana - Income - Jacket Jeans Bordir Dewasa Wanita Art. Bear',
          productImage:
              'https://orca-photo.shopback.co.id/AsU9lrGHPl5CWhIXxgC4c-c39uDraciRai5b-nJRDQo/resize:fill:292:292:1/gravity:no/aHR0cHM6Ly9jZi5z/aG9wZWUuY28uaWQv/ZmlsZS9pZC0xMTEz/NDIwMS0yMzAyMC1i/c3RrN21waHB5bnY2/Nw.jpg',
          price: 147500,
          priceDicoret: 165000,
          favorite: false,
          rating: 4.9,
        ),
        Product(
          productName:
              'Ria Busana - Belle - Tshirt Oversize Lengan Panjang Wanita Art. Flower Girl',
          productImage:
              'https://cf.shopee.co.id/file/id-11134201-23020-jb5snl98kynv38',
          price: 61000,
          priceDicoret: 65000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName:
              'Ria Busana - Belle - Tanktop Dewasa Wanita Art. 7192-TALISDG',
          productImage:
              'https://down-id.img.susercontent.com/file/sg-11134201-22120-jaq7fg2v2tkv58',
          price: 36000,
          priceDicoret: 40000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName:
              'Ria Busana - Umama - Kerudung Segiempat Art. Basicvoal 110x110',
          productImage:
              'https://cf.shopee.co.id/file/sg-11134201-23010-wzevt11xkdmvc7_tn',
          price: 19000,
          priceDicoret: 24500,
          favorite: false,
          rating: 4.8,
        ),
      ],
    ),
    Shop(
      name: "Alfarox Photography",
      nameShop: "Alfarox Studio",
      location: "Kota Surakarta",
      rating: 4.9,
      imageShop:
          "https://picsum.photos/id/${Random().nextInt(999) + 1}/300/300",
      product: [
        Product(
          productName: 'Alfarox Photography - Great 10 + 1 Shoot',
          productImage:
              "https://picsum.photos/id/${Random().nextInt(999) + 2}/300/300",
          price: 490000,
          priceDicoret: 560000,
          favorite: false,
          rating: 4.9,
        ),
        Product(
          productName: 'Alfarox Photography - Exclucive 25 Shoot',
          productImage:
              "https://picsum.photos/id/${Random().nextInt(999) + 2}/300/300",
          price: 2000000,
          priceDicoret: 2240000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName: 'Alfarox Photography - Special Large 50 Shoot',
          productImage:
              "https://picsum.photos/id/${Random().nextInt(999) + 3}/300/300",
          price: 3570000,
          priceDicoret: 4120000,
          favorite: false,
          rating: 4.7,
        ),
        Product(
          productName: 'Alfarox Photography - Exrta Large 100 Shoot',
          productImage:
              "https://picsum.photos/id/${Random().nextInt(999) + 4}/300/300",
          price: 4999999,
          priceDicoret: 5100000,
          favorite: false,
          rating: 4.8,
        ),
      ],
    ),
  ];
}
