class Shop {
  final String name;
  final String location;
  final String imageShop;
  final List product;

  Shop({
    required this.name,
    required this.location,
    required this.imageShop,
    required this.product,
  });
}

class Product {
  final String productName;
  final String productImage;
  final String timeStamp;
  final String variasi;
  final List varian;
  final double price;
  final double priceDicoret;
  final int stok;
  final int jumlahPembelian;
  final bool favorite;
  final bool check;

  Product({
    required this.productName,
    required this.productImage,
    required this.timeStamp,
    required this.varian,
    required this.variasi,
    required this.price,
    required this.priceDicoret,
    required this.stok,
    required this.jumlahPembelian,
    required this.favorite,
    required this.check,
  });
}

class ShopList {
  final List<Shop> shops = [
    Shop(
      name: "Ria Busana",
      location: "Kota Surakarta",
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
          stok: 65,
          varian: [
            'Biru Muda',
            'Biru Tua',
            'Hitam',
          ],
          variasi: 'Biru Muda',
          jumlahPembelian: 1,
          check: false,
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
          stok: 21,
          varian: [
            'White',
            'Red',
            'Orange',
            'Pink',
            'Black',
            'Cream',
          ],
          variasi: 'Cream',
          jumlahPembelian: 1,
          check: false,
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
          stok: 45,
          varian: [
            'Black',
            'White',
          ],
          variasi: 'White',
          jumlahPembelian: 1,
          check: false,
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
          stok: 99,
          varian: [
            'Red',
            'Pink',
            'Maroon',
          ],
          variasi: 'Red',
          jumlahPembelian: 1,
          check: false,
          timeStamp: '2023-07-22 15:30:00',
        ),
      ],
    ),
    Shop(
      name: "Istana Buah",
      location: "Kota Surakarta",
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
          stok: 32,
          varian: [
            '1/2 Kg',
            '1 Kg',
          ],
          variasi: '1/2 Kg',
          jumlahPembelian: 1,
          check: false,
          timeStamp: '2023-08-08 15:30:00',
        ),
        Product(
          productName: 'Melon SUPER Orange f1 fresh/1pcs',
          productImage:
              'https://awsimages.detik.net.id/community/media/visual/2019/09/10/b2001cfb-54e9-49d0-9e84-c9056b9693a3.jpeg?w=1200',
          price: 67000,
          priceDicoret: 75000,
          favorite: false,
          stok: 30000,
          varian: [
            '1',
            '1/2',
          ],
          variasi: '1',
          jumlahPembelian: 1,
          check: false,
          timeStamp: '2023-08-07 15:30:00',
        ),
        Product(
          productName: 'Strawberry Sweetheart Hidroponik 125 g 125 gram',
          productImage:
              'https://kabarpemalang.id/wp-content/uploads/2021/05/96-Wisata-Pemalang-Kebun-Strawberry-Karangsari-1.jpg',
          price: 17400,
          priceDicoret: 21500,
          favorite: false,
          stok: 21,
          varian: [
            '125 gram',
            '500 gram',
            '1000 gram',
          ],
          variasi: '125 gram',
          jumlahPembelian: 1,
          check: false,
          timeStamp: '2023-06-22 15:30:00',
        ),
        Product(
          productName: 'Pisang Ambon 1 Sisir',
          productImage:
              'https://faktualid.com/wp-content/uploads/2021/10/banana.jpg',
          price: 26000,
          priceDicoret: 30000,
          favorite: false,
          stok: 53,
          varian: [],
          variasi: '',
          jumlahPembelian: 1,
          check: false,
          timeStamp: '2023-07-21 15:30:00',
        ),
      ],
    ),
    Shop(
      name: "Mixue - Ice Cream & Tea",
      location: "Kota Surakarta",
      imageShop:
          "https://seeklogo.com/images/M/mixue-logo-6AE8953ADB-seeklogo.com.png",
      product: [
        Product(
          productName: 'Mixue Brown Sugar Pearl Milk Tea',
          productImage:
              'https://www.blibli.com/friends-backend/wp-content/uploads/2023/06/B600375-2-Brown-Sugar-Pearl-Milk-Tea-%E2%80%93-Rp-21000.jpg',
          price: 19950,
          priceDicoret: 21000,
          favorite: false,
          stok: 31,
          varian: [
            'Normal',
            'Half Sugar',
          ],
          variasi: 'Normal',
          jumlahPembelian: 1,
          check: false,
          timeStamp: '2023-08-05 15:30:00',
        ),
      ],
    ),
  ];
}
