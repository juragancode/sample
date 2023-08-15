import 'dart:math';

class Shop {
  final String name;
  final String locationStore;
  final String location;
  final double rating;
  final double jarak;
  final String imageShop;
  final String bannerShop;
  final List product;
  final bool kurir;

  Shop({
    required this.name,
    required this.locationStore,
    required this.location,
    required this.rating,
    required this.jarak,
    required this.imageShop,
    required this.bannerShop,
    required this.product,
    required this.kurir,
  });
}

class Product {
  final String productName;
  final String productImage;
  final String timeStamp;
  final double price;
  final double priceDicoret;
  final double rating;
  final int terjual;
  final int dilihat;
  final int stok;
  final bool favorite;

  Product({
    required this.productName,
    required this.productImage,
    required this.timeStamp,
    required this.price,
    required this.priceDicoret,
    required this.rating,
    required this.terjual,
    required this.dilihat,
    required this.stok,
    required this.favorite,
  });
}

class ShopList {
  final List<Shop> shops = [
    Shop(
      name: "Rekadigi Shop",
      locationStore: "Rekadigi Office",
      location: "Kota Surakarta",
      rating: 4.9,
      kurir: false,
      jarak: 1.24,
      bannerShop:
          "https://startupstudio.id/wp-content/uploads/2021/04/02.-SSI_FollowUp_April2021_Bawa-Startup-Anda-GoTheExtraMiles-Bersama-Startup-Studio-Indonesia.jpg",
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
          stok: 99,
          terjual: 0,
          dilihat: 5674462,
          timeStamp: '2023-06-22 15:30:00',
        ),
        Product(
          productName: 'Mobile App',
          productImage:
              'https://www.techrepublic.com/wp-content/uploads/2022/06/top-development-frameworks-770x513.jpeg',
          price: 45000000,
          priceDicoret: 50000000,
          favorite: false,
          rating: 4.7,
          stok: 99,
          terjual: 12,
          dilihat: 10732487,
          timeStamp: '2023-7-04 15:30:00',
        ),
        Product(
          productName: 'MPV',
          productImage:
              'https://innovecs.com/wp-content/uploads/2020/11/building-software-development-teams.jpg',
          price: 35000000,
          priceDicoret: 40000000,
          favorite: false,
          rating: 4.9,
          stok: 99,
          terjual: 21,
          dilihat: 18832487,
          timeStamp: '2023-08-06 15:30:00',
        ),
        Product(
          productName: 'Custom Software',
          productImage:
              'https://www.centerklik.com/wp-content/uploads/2019/04/Software-Developer-engineer.jpg',
          price: 75000000,
          priceDicoret: 80000000,
          favorite: false,
          rating: 4.9,
          stok: 99,
          terjual: 5,
          dilihat: 13732487,
          timeStamp: '2023-08-09 15:30:00',
        ),
        Product(
          productName: 'Maintenance',
          productImage:
              'https://images.easytechjunkie.com/man-maintaining-network-server.jpg',
          price: 4900000,
          priceDicoret: 5000000,
          favorite: false,
          rating: 4.7,
          stok: 99,
          terjual: 6,
          dilihat: 11732487,
          timeStamp: '2023-08-05 15:30:00',
        ),
      ],
    ),
    Shop(
      name: "Istana Buah",
      locationStore: "Istana Buah & Juice Surakarta",
      location: "Kota Surakarta",
      rating: 4.6,
      kurir: true,
      jarak: 2.09,
      bannerShop:
          "https://asset-2.tstatic.net/jateng/foto/bank/images/toko-istana-buah-semarang.jpg",
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
          stok: 32,
          terjual: 1200,
          dilihat: 6574467,
          timeStamp: '2023-08-08 15:30:00',
        ),
        Product(
          productName: 'Melon SUPER Orange f1 fresh/1pcs',
          productImage:
              'https://awsimages.detik.net.id/community/media/visual/2019/09/10/b2001cfb-54e9-49d0-9e84-c9056b9693a3.jpeg?w=1200',
          price: 67000,
          priceDicoret: 75000,
          favorite: false,
          rating: 4.9,
          stok: 30000,
          terjual: 43643,
          dilihat: 654547,
          timeStamp: '2023-08-07 15:30:00',
        ),
        Product(
          productName: 'Strawberry Sweetheart Hidroponik 125 g 125 gram',
          productImage:
              'https://kabarpemalang.id/wp-content/uploads/2021/05/96-Wisata-Pemalang-Kebun-Strawberry-Karangsari-1.jpg',
          price: 17400,
          priceDicoret: 21500,
          favorite: false,
          rating: 4.7,
          stok: 21,
          terjual: 546,
          dilihat: 11732487,
          timeStamp: '2023-06-22 15:30:00',
        ),
        Product(
          productName: 'Pisang Ambon 1 Sisir',
          productImage:
              'https://faktualid.com/wp-content/uploads/2021/10/banana.jpg',
          price: 26000,
          priceDicoret: 30000,
          favorite: false,
          rating: 4.7,
          stok: 53,
          terjual: 546,
          dilihat: 1554787,
          timeStamp: '2023-07-21 15:30:00',
        ),
      ],
    ),
    Shop(
      name: "Awesome Travel",
      locationStore: "Agen Perjalanan Luar Negeri Jawa Tengah",
      location: "Kota Surakarta",
      rating: 4.9,
      kurir: true,
      jarak: 3.24,
      bannerShop:
          "https://picsum.photos/${Random().nextInt(999) + 600}/${Random().nextInt(999) + 600}",
      imageShop:
          "https://picsum.photos/${Random().nextInt(999) + 300}/${Random().nextInt(999) + 300}",
      product: [
        Product(
          productName: 'Perjalanan Luar Negeri Terbaik',
          productImage:
              "https://picsum.photos/${Random().nextInt(999) + 300}/${Random().nextInt(999) + 300}",
          price: 4900000,
          priceDicoret: 5600000,
          favorite: false,
          rating: 4.9,
          stok: 43,
          terjual: 7,
          dilihat: 17732487,
          timeStamp: '2023-08-06 15:30:00',
        ),
        Product(
          productName: 'Perjalanan Luar Negeri 15 Tempat',
          productImage:
              "https://picsum.photos/${Random().nextInt(999) + 300}/${Random().nextInt(999) + 300}",
          price: 20000000,
          priceDicoret: 22400000,
          favorite: false,
          rating: 4.7,
          stok: 61,
          terjual: 1289,
          dilihat: 21732487,
          timeStamp: '2023-08-05 15:30:00',
        ),
        Product(
          productName: 'Perjalanan Luar Negeri 2 Negara',
          productImage:
              "https://picsum.photos/${Random().nextInt(999) + 300}/${Random().nextInt(999) + 300}",
          price: 35700000,
          priceDicoret: 41200000,
          favorite: false,
          rating: 4.7,
          stok: 80,
          terjual: 1274355,
          dilihat: 19732487,
          timeStamp: '2023-08-04 15:30:00',
        ),
        Product(
          productName: 'Perjalanan Luar Negeri 5 Negara',
          productImage:
              "https://picsum.photos/${Random().nextInt(999) + 300}/${Random().nextInt(999) + 300}",
          price: 79999990,
          priceDicoret: 91000000,
          favorite: false,
          rating: 4.8,
          stok: 67,
          terjual: 75899,
          dilihat: 54345,
          timeStamp: '2023-07-26 15:30:00',
        ),
      ],
    ),
    Shop(
      name: "Batik Prabuseno",
      locationStore: "Batik Prabuseno Store, Laweyan",
      location: "Kota Surakarta",
      rating: 4.8,
      kurir: true,
      jarak: 0.57,
      bannerShop:
          "https://lh3.googleusercontent.com/p/AF1QipPN9vivymJ-B3zlWNtbubFXZL81OXJ6DNqTuQkt=s680-w680-h510",
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
          stok: 42,
          terjual: 56754,
          dilihat: 12732487,
          timeStamp: '2023-07-19 15:30:00',
        ),
        Product(
          productName: 'Batik Wanita Sackdress Batik Parang Arjunaweda',
          productImage:
              'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/MTA-20715323/batik_arjunaweda_batik_arjunaweda_28163061_sackdress_parang_matahari__wanita_-_orange_full01_l1ydk9q6.jpeg',
          price: 349500,
          priceDicoret: 375000,
          favorite: false,
          rating: 4.8,
          stok: 123,
          terjual: 67564,
          dilihat: 13232487,
          timeStamp: '2023-07-18 15:30:00',
        ),
        Product(
          productName: 'My Aksa Batik Anak Perempuan Dress Laura Lionel',
          productImage:
              'https://dynamic.zacdn.com/CKeH4AQPbf5slAADGTXmTNSUCRY=/filters:quality(70):format(webp)/https://static-id.zacdn.com/p/my-aksa-fit-everywhere-1749-7371793-4.jpg',
          price: 255000,
          priceDicoret: 275000,
          favorite: false,
          rating: 4.7,
          stok: 70,
          terjual: 6574765,
          dilihat: 15532487,
          timeStamp: '2023-07-12 15:30:00',
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
          stok: 675,
          terjual: 5465432,
          dilihat: 13432487,
          timeStamp: '2023-06-14 15:30:00',
        ),
      ],
    ),
    Shop(
      name: "Mixue - Ice Cream & Tea",
      locationStore: "MIXUE Solo",
      location: "Kota Surakarta",
      rating: 4.9,
      kurir: true,
      jarak: 0.57,
      bannerShop:
          "https://www.ascomaxx.com/uploads/large/87394f112b9b1da8bc2f1ef8ad36c257.png",
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
          stok: 23,
          terjual: 1000,
          dilihat: 16732487,
          timeStamp: '2023-07-08 15:30:00',
        ),
        Product(
          productName: 'Mixue Lucky Sundae Strawberry Ice Cream',
          productImage:
              'https://d1sag4ddilekf6.cloudfront.net/compressed_webp/items/IDITE20220210064302331775/detail/menueditor_item_9d2a228f20f240ecb8eb61e08520fc33_1646304201208694890.webp',
          price: 17650,
          priceDicoret: 20000,
          favorite: false,
          rating: 4.7,
          stok: 78,
          terjual: 675476,
          dilihat: 1276542,
          timeStamp: '2023-08-08 15:30:00',
        ),
        Product(
          productName: 'Mixue Berrybean Sundae Ice Cream',
          productImage:
              'https://images.tokopedia.net/img/JFrBQq/2022/9/14/5c3fe4bf-4204-436a-a205-676b0620e96d.jpg',
          price: 17650,
          priceDicoret: 20000,
          favorite: false,
          rating: 4.7,
          stok: 99,
          terjual: 678568,
          dilihat: 132575,
          timeStamp: '2023-08-06 15:30:00',
        ),
        Product(
          productName: 'Mixue Brown Sugar Pearl Milk Tea',
          productImage:
              'https://www.blibli.com/friends-backend/wp-content/uploads/2023/06/B600375-2-Brown-Sugar-Pearl-Milk-Tea-%E2%80%93-Rp-21000.jpg',
          price: 19950,
          priceDicoret: 21000,
          favorite: false,
          rating: 4.7,
          stok: 31,
          terjual: 890890,
          dilihat: 653,
          timeStamp: '2023-08-05 15:30:00',
        ),
      ],
    ),
    Shop(
      name: "Ria Busana",
      locationStore: "Pusat Grosir Solo (PGS)",
      location: "Kota Surakarta",
      rating: 4.7,
      kurir: true,
      jarak: 0.38,
      bannerShop:
          "https://lowongan.web.id/assets/images/job/a4be93c3732bd4b6a427edad5d8bd05f.jpg",
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
          stok: 65,
          terjual: 49074,
          dilihat: 16735644,
          timeStamp: '2023-06-04 15:30:00',
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
          stok: 21,
          terjual: 9808989,
          dilihat: 87963,
          timeStamp: '2023-06-04 15:30:00',
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
          stok: 45,
          terjual: 768,
          dilihat: 6587546,
          timeStamp: '2023-08-09 15:30:00',
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
          stok: 99,
          terjual: 45654,
          dilihat: 57546,
          timeStamp: '2023-07-22 15:30:00',
        ),
      ],
    ),
    Shop(
      name: "Alfarox Photography",
      locationStore: "Alfarox Studio - Solo",
      location: "Kota Surakarta",
      rating: 4.9,
      kurir: true,
      jarak: 0.94,
      bannerShop:
          "https://picsum.photos/${Random().nextInt(999) + 600}/${Random().nextInt(999) + 600}",
      imageShop:
          "https://picsum.photos/${Random().nextInt(999) + 300}/${Random().nextInt(999) + 300}",
      product: [
        Product(
          productName: 'Alfarox Photography - Great 10 + 1 Shoot',
          productImage:
              "https://picsum.photos/${Random().nextInt(999) + 300}/${Random().nextInt(999) + 300}",
          price: 490000,
          priceDicoret: 560000,
          favorite: false,
          rating: 4.9,
          stok: 99,
          terjual: 456,
          dilihat: 87642,
          timeStamp: '2023-07-21 15:30:00',
        ),
        Product(
          productName: 'Alfarox Photography - Exclucive 25 Shoot',
          productImage:
              "https://picsum.photos/${Random().nextInt(999) + 300}/${Random().nextInt(999) + 300}",
          price: 2000000,
          priceDicoret: 2240000,
          favorite: false,
          rating: 4.7,
          stok: 99,
          terjual: 45634,
          dilihat: 54634,
          timeStamp: '2023-07-12 15:30:00',
        ),
        Product(
          productName: 'Alfarox Photography - Special Large 50 Shoot',
          productImage:
              "https://picsum.photos/${Random().nextInt(999) + 300}/${Random().nextInt(999) + 300}",
          price: 3570000,
          priceDicoret: 4120000,
          favorite: false,
          rating: 4.7,
          stok: 99,
          terjual: 8790,
          dilihat: 6543,
          timeStamp: '2023-06-03 15:30:00',
        ),
        Product(
          productName: 'Alfarox Photography - Exrta Large 100 Shoot',
          productImage:
              "https://picsum.photos/${Random().nextInt(999) + 300}/${Random().nextInt(999) + 300}",
          price: 4999999,
          priceDicoret: 5100000,
          favorite: false,
          rating: 4.8,
          stok: 99,
          terjual: 135,
          dilihat: 43652,
          timeStamp: '2023-07-04 15:30:00',
        ),
      ],
    ),
  ];
}
