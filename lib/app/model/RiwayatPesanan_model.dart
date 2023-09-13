class RiwayatPesanan {
  final String name;
  final String shopName;
  final String image;
  late String? resi;
  final double price;
  final int jumlahPesanan;
  final Status status;
  final List lacakPesanan;

  RiwayatPesanan({
    required this.name,
    required this.shopName,
    this.resi,
    required this.image,
    required this.price,
    required this.jumlahPesanan,
    required this.status,
    required this.lacakPesanan,
  });
}

class LacakPesanan {
  final DateTime waktu;
  final String info;

  LacakPesanan({
    required this.waktu,
    required this.info,
  });
}

enum Status {
  diproses,
  dikirim,
  sampaiTujuan,
  selesai,
  dibatalkan,
}

class RiwayatPesananList {
  final List<RiwayatPesanan> riwayatpesanan_ = [
    RiwayatPesanan(
      name:
          "TWS Lenovo XT81 Headset Bluetooth 5.3 Wireless Gaming Earphone Low Latency with Mic Original Noise Cancelling Kompatibel",
      shopName: "TWS 3C Digital",
      image:
          "https://down-id.img.susercontent.com/file/sg-11134201-22110-5d3traeyyzjvd2",
      price: 135400,
      jumlahPesanan: 1,
      // resi: "4G56FDG6FD65S565",
      lacakPesanan: [
        LacakPesanan(
            waktu: DateTime.now(), info: "Seller sedang menyiapkan pesanan"),
      ],
      status: Status.diproses,
    ),
    RiwayatPesanan(
      name: "Lengkeng Bangkok per 500gr Longan Thailand",
      shopName: "Toko Bagas",
      image:
          "https://down-id.img.susercontent.com/file/c7f9be1627694babc4e6d9d7b6df5de1",
      price: 129000,
      jumlahPesanan: 1,
      resi: "80CX5HFDH0FDHDFH58",
      lacakPesanan: [
        LacakPesanan(
            waktu: DateTime(2023, 9, 3, 13, 21),
            info: "Seller sudah mengirim paket"),
        LacakPesanan(
            waktu: DateTime(2023, 9, 8, 11, 00),
            info: "Paket telah diterima di Karanganyar [Sortir Karanganyar]"),
        LacakPesanan(
            waktu: DateTime(2023, 9, 9, 15, 30),
            info: "Paket telah tiba dan diterima oleh Kerabat"),
      ],
      status: Status.selesai,
    ),
    RiwayatPesanan(
      name: "My Aksa Batik Wanita Blouse Kimi Khalil",
      shopName: "Bernita Fashion",
      image:
          "https://down-id.img.susercontent.com/file/0c7683baac488ccc8cff862c9c5af005",
      price: 399000,
      jumlahPesanan: 1,
      // resi: "FG78GFDGHJ7S854FFD3",
      lacakPesanan: [
        LacakPesanan(
            waktu: DateTime.now().subtract(Duration(days: 1)),
            info: "Seller sedang menyiapkan pesanan"),
      ],
      status: Status.diproses,
    ),
    RiwayatPesanan(
      name:
          "Handphone Samsung Galaxy S23 Ultra 12GB+256GB - 12/512GB - 12/1TB 5G Garansi Resmi Samsung S23 Plus 8GB+512GB - 8GB+256GB",
      shopName: "Noval Tech",
      image:
          "https://down-id.img.susercontent.com/file/id-11134207-7qul6-liu6yo90a61t25",
      price: 19999000,
      jumlahPesanan: 1,
      resi: "GH6FG70HHJK885SKIJG",
      lacakPesanan: [
        LacakPesanan(
            waktu: DateTime.now().subtract(Duration(days: 2)),
            info: "Seller sudah mengirim paket"),
        LacakPesanan(
            waktu: DateTime.now().subtract(Duration(days: 1)),
            info: "Paket telah diterima di Jakarta [Sortir Jakarta]"),
      ],
      status: Status.dikirim,
    ),
    RiwayatPesanan(
      name:
          "Hand Painted Cartoon Shoes,Hi top custom painted shoes,Casual Lace Individuality Doodle Hand Drawn sneakers,custom birthday gift",
      shopName: "Wawan Art Galery",
      image:
          "https://i.etsystatic.com/10655649/r/il/b5771f/3209670708/il_794xN.3209670708_5wtw.jpg",
      price: 1050955,
      jumlahPesanan: 1,
      resi: "FD78HFDH7HGF80GHFGH8",
      lacakPesanan: [
        LacakPesanan(
            waktu: DateTime.now().subtract(Duration(days: 3)),
            info: "Pesanan dibuat"),
        LacakPesanan(
            waktu: DateTime.now().subtract(Duration(days: 2)),
            info: "Seller sudah mengirim paket"),
        LacakPesanan(
            waktu: DateTime.now().subtract(Duration(days: 2)),
            info: "Paket telah diterima di Solo [Sortir Solo]"),
        LacakPesanan(
            waktu: DateTime.now().subtract(Duration(days: 1)),
            info: "Paket telah diterima di Semarang [Sortir Semarang]"),
      ],
      status: Status.sampaiTujuan,
    ),
    RiwayatPesanan(
      name:
          "Sandal Pria Original Lozta Sl Scater High Quality / Sandal Traveling 2023",
      shopName: "Andi Shop",
      image:
          "https://down-id.img.susercontent.com/file/b2c3b50ec55eb82b1fe03780b63c2e6f",
      price: 59400,
      jumlahPesanan: 1,
      resi: "WG87F78FDGGFD67FDDGC",
      lacakPesanan: [
        LacakPesanan(
            waktu: DateTime.now().subtract(Duration(days: 2)),
            info: "Pesanan dibuat"),
        LacakPesanan(
            waktu: DateTime.now().subtract(Duration(days: 1)),
            info: "Seller sudah mengirim paket"),
        LacakPesanan(
            waktu: DateTime.now().subtract(Duration(days: 1)),
            info: "Paket telah diterima di Solo [Sortir Solo]"),
        LacakPesanan(
            waktu: DateTime.now().subtract(Duration(days: 0)),
            info: "Paket telah diterima di Solo [Sortir Solo]"),
      ],
      status: Status.sampaiTujuan,
    ),
    RiwayatPesanan(
      name:
          "ADVAN Laptop Workplus AMD Ryzen 5 6600H 14'' FHD IPS 16Gb 512Gb Win 11",
      shopName: "Bagas 31",
      image:
          "https://down-id.img.susercontent.com/file/id-11134207-7r98o-lkrs2gus0yofb5",
      price: 6999000,
      jumlahPesanan: 1,
      resi: "GF7GF87FG89GFGFHBNBVC",
      lacakPesanan: [
        LacakPesanan(
            waktu: DateTime.now().subtract(Duration(days: 2)),
            info: "Pesanan dibuat"),
        LacakPesanan(
            waktu: DateTime.now().subtract(Duration(days: 1)),
            info: "Seller sudah mengirim paket"),
        LacakPesanan(
            waktu: DateTime.now().subtract(Duration(days: 0)),
            info: "Paket telah diterima di Bandung [Sortir Jakarta]"),
      ],
      status: Status.dikirim,
    ),
    RiwayatPesanan(
      name: "L'Oreal Paris Aura Perfect Clinical Night Cream Skin Care - 50 ml",
      shopName: "L'Oreal Paris Cosmetics Indonesia Official Shop",
      image:
          "https://down-id.img.susercontent.com/file/sg-11134201-7qvg5-lj11rd95ygz714",
      price: 162400,
      jumlahPesanan: 1,
      resi: "CVXFDD8DFDF87FDHFDD09H",
      lacakPesanan: [
        LacakPesanan(
            waktu: DateTime(2023, 9, 7, 13, 21), info: "Pesanan dibuat"),
        LacakPesanan(
            waktu: DateTime(2023, 9, 7, 13, 21), info: "Pesanan dibatalkan"),
      ],
      status: Status.dibatalkan,
    ),
  ];
}
