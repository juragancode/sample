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

enum Kondisi {
  Baru,
  Bekas,
}

class Product {
  final String productName;
  final String productImage;
  final String timeStamp;
  final String kategori;
  late String? deskripsi;
  final double price;
  final double priceDicoret;
  final double rating;
  final double berat;
  final int terjual;
  final int dilihat;
  final int stok;
  final bool favorite;
  final Kondisi kondisi;

  Product({
    required this.productName,
    required this.productImage,
    required this.timeStamp,
    required this.kategori,
    this.deskripsi,
    required this.price,
    required this.priceDicoret,
    required this.rating,
    required this.berat,
    required this.terjual,
    required this.dilihat,
    required this.stok,
    required this.favorite,
    required this.kondisi,
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
          berat: 500,
          kategori: "Jasa",
          kondisi: Kondisi.Baru,
          deskripsi: 'Kami menyediakan layanan UX Research yang dirancang khusus untuk membantu Anda mengoptimalkan pengalaman pengguna (UX) produk atau layanan Anda. Dengan pendekatan yang mendalam dan metodologi yang teruji, tim ahli kami akan memastikan bahwa produk Anda tidak hanya fungsional, tetapi juga memenuhi harapan dan kebutuhan pengguna.\n' +
              '\n' +
              'Apa yang Kami Tawarkan:\n' +
              '\n' +
              'Analisis Mendalam: Kami melakukan analisis mendalam tentang interaksi pengguna dengan produk Anda. Ini termasuk mengidentifikasi tantangan, kebutuhan, dan preferensi pengguna.\n' +
              'Penelitian Pengguna: Kami melakukan penelitian langsung dengan pengguna untuk memahami perilaku, masalah, dan keinginan mereka terkait produk Anda.\n' +
              'Usability Testing: Melalui tes penggunaan, kami mengidentifikasi area di mana produk Anda dapat ditingkatkan untuk memastikan penggunaan yang lebih lancar dan efisien.\n' +
              'Persona Development: Kami membuat gambaran karakter (persona) pengguna yang representatif, membantu Anda memahami audiens Anda dengan lebih baik.\n' +
              'Analisis Persaingan: Kami menganalisis produk serupa di pasar untuk mengidentifikasi peluang unik dan membedakan produk Anda.\n' +
              'Rekomendasi Peningkatan: Berdasarkan temuan penelitian kami, kami memberikan rekomendasi konkret untuk meningkatkan pengalaman pengguna, termasuk desain antarmuka yang lebih intuitif dan peningkatan fitur.',
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
          berat: 500,
          kategori: "Software",
          kondisi: Kondisi.Baru,
          deskripsi: 'Di tengah pergeseran paradigma digital, memiliki kehadiran yang kuat di dunia aplikasi mobile adalah kunci untuk menjangkau pelanggan dengan cara yang lebih mendalam dan relevan. Layanan Pembuatan Aplikasi Mobile kami dirancang untuk mewujudkan visi Anda menjadi aplikasi yang menarik, fungsional, dan memikat pengguna di seluruh platform mobile.\n' +
              '\n' +
              'Apa yang Kami Tawarkan:\n' +
              '\n' +
              'Konsultasi dan Konseptualisasi: Tim kami bekerja sama dengan Anda untuk menggali ide dan tujuan Anda. Kami menerjemahkan ide menjadi konsep aplikasi yang kuat dan berharga.\n' +
              'Pengembangan Multiplatform: Kami menguasai berbagai platform, termasuk iOS dan Android, sehingga aplikasi Anda dapat diakses oleh sebanyak mungkin pengguna.\n' +
              'Antarmuka Pengguna yang Menarik: Kami merancang antarmuka pengguna yang menarik dan intuitif untuk memastikan pengalaman yang lancar dan mengundang.\n' +
              'Pengembangan Kustom: Aplikasi mobile yang dibuat khusus menggabungkan fitur-fitur yang sesuai dengan kebutuhan unik Anda.\n' +
              'Integrasi dan Pengujian: Kami memastikan bahwa aplikasi Anda berfungsi dengan lancar dan terintegrasi dengan sistem lain yang Anda gunakan.\n' +
              'Peluncuran dan Dukungan: Kami membantu Anda dalam proses peluncuran aplikasi dan menyediakan dukungan pascapenjualan yang terpercaya.',
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
          berat: 500,
          kategori: "Software",
          kondisi: Kondisi.Baru,
          deskripsi: 'Deskripsi:\n' +
              'Kami memahami bahwa inovasi bisnis sering dimulai dengan pengembangan Aplikasi MPV (Minimum Viable Product) yang kuat. Layanan pembuatan Aplikasi MPV kami dirancang untuk membantu Anda merancang, mengembangkan, dan meluncurkan produk perangkat lunak awal yang tangkas dan efektif. Dengan pendekatan yang berfokus pada esensi dan solusi yang berdampak, tim ahli kami akan membantu Anda meraih hasil cepat dan membuat dampak di pasar.\n' +
              '\n' +
              'Apa yang Kami Tawarkan:\n' +
              '\n' +
              'Pendekatan Berorientasi Solusi: Kami bekerja sama dengan Anda untuk mengidentifikasi masalah inti yang ingin Anda selesaikan dengan aplikasi MPV Anda. Kami fokus pada solusi yang memberikan nilai tertinggi kepada pengguna Anda.\n' +
              'Desain User-Centric: Desain antarmuka yang intuitif dan efisien adalah kunci kesuksesan. Kami mendesain pengalaman pengguna yang responsif dan menarik, membantu Anda menarik perhatian pengguna.\n' +
              'Pengembangan Cepat: Kami menggunakan teknologi modern dan metodologi pengembangan yang canggih untuk mempercepat proses pembuatan aplikasi MPV Anda.\n' +
              'Tes dan Validasi: Kami melakukan pengujian menyeluruh untuk memastikan bahwa aplikasi MPV Anda bekerja dengan baik di berbagai skenario penggunaan.\n' +
              'Skalabilitas Masa Depan: Meskipun fokus pada MPV, kami membangun dengan masa depan dalam pikiran. Aplikasi yang dibangun dapat ditingkatkan dan dikembangkan lebih lanjut sesuai kebutuhan Anda.\n' +
              'Peluncuran Berhasil: Kami memberikan dukungan saat peluncuran, membantu Anda menghadirkan aplikasi MPV Anda ke pasar dengan percaya diri.',
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
          berat: 500,
          kategori: "Software",
          kondisi: Kondisi.Baru,
          deskripsi: 'Deskripsi:\n' +
              'Dalam era digital yang berkembang dengan pesat, keberhasilan bisnis sering kali bergantung pada kemampuan mereka untuk beradaptasi dan memanfaatkan teknologi secara efektif. Layanan Custom Software kami hadir untuk memberdayakan bisnis Anda dengan solusi perangkat lunak yang dirancang khusus sesuai dengan kebutuhan unik Anda. Dari aplikasi manajemen internal hingga platform pelanggan yang inovatif, kami mendedikasikan diri kami untuk menghadirkan solusi yang mengubah cara Anda beroperasi.\n' +
              '\n' +
              'Apa yang Kami Tawarkan:\n' +
              '\n' +
              'Konsultasi Mendalam: Tim ahli kami bekerja sama dengan Anda untuk memahami tujuan dan tantangan bisnis Anda. Kami mendengarkan dengan seksama untuk merancang solusi perangkat lunak yang mengatasi masalah Anda secara tepat.\n' +
              'Pengembangan Kustom: Kami merancang dan mengembangkan perangkat lunak dari awal, memastikan bahwa setiap fitur dan fungsi diintegrasikan dengan sempurna sesuai dengan kebutuhan Anda.\n' +
              'User-Centric Design: Desain antarmuka yang intuitif adalah fokus utama kami. Kami menciptakan pengalaman pengguna yang mengundang, meningkatkan kenyamanan dan produktivitas.\n' +
              'Pengujian Mendalam: Setiap tahap pengembangan disertai dengan pengujian menyeluruh untuk memastikan keandalan, keamanan, dan performa yang optimal.\n' +
              'Skalabilitas dan Pertumbuhan: Kami merancang solusi perangkat lunak yang dapat tumbuh seiring dengan bisnis Anda, memungkinkan penambahan fitur dan integrasi masa depan.\n' +
              'Pelatihan dan Dukungan: Kami menyediakan pelatihan dan dukungan komprehensif untuk memastikan bahwa tim Anda dapat memanfaatkan solusi perangkat lunak secara efektif.',
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
          berat: 500,
          kategori: "Jasa",
          kondisi: Kondisi.Baru,
          deskripsi: 'Aplikasi Anda adalah aset berharga yang memainkan peran kunci dalam menjaga hubungan Anda dengan pengguna. Namun, seperti halnya perangkat lunak lainnya, aplikasi juga memerlukan perawatan teratur agar tetap berfungsi dengan baik. Layanan Pemeliharaan Aplikasi kami dirancang untuk memastikan aplikasi Anda tetap up-to-date, bebas dari bug, dan memberikan pengalaman pengguna yang optimal.\n' +
              '\n' +
              'Apa yang Kami Tawarkan:\n' +
              '\n' +
              'Pemeliharaan Berkala: Kami menawarkan paket pemeliharaan berkala yang mencakup pembaruan rutin, peningkatan kinerja, dan pembersihan kode.\n' +
              'Pembaruan Fungsionalitas: Kami memastikan aplikasi Anda tetap relevan dengan memperkenalkan fitur baru yang sesuai dengan perkembangan pasar dan kebutuhan pengguna.\n' +
              'Pemecahan Masalah dan Debugging: Tim kami memantau aplikasi Anda untuk mendeteksi dan memperbaiki bug, serta menjalankan pengujian menyeluruh.\n' +
              'Optimisasi Kinerja: Kami mengoptimalkan kinerja aplikasi Anda, memastikan waktu respons cepat, dan penggunaan sumber daya yang efisien.\n' +
              'Pembaruan Keamanan: Kami memastikan bahwa aplikasi Anda aman dengan melakukan pembaruan keamanan secara teratur.\n' +
              'Dukungan Teknis: Tim dukungan kami siap memberikan bantuan cepat dan responsif jika Anda mengalami masalah teknis.',
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
          berat: 500,
          kategori: "Makanan",
          kondisi: Kondisi.Baru,
          deskripsi: 'Mangga harum manis\n' +
              'Manis dan wangi\n' +
              'Harga tertera untuk 1kg...\n' +
              'Isi bisa 2-3buah\n' +
              '\n' +
              'SEMUA PRODUK YANG KAMI KIRIMKAN BERGARANSI BILA ADA YANG RUSAK ATAU BUSUK / TIDAK LAYAK KONSUMSI..BISA KAMI GANTI DENGAN SYARAT KIRIM FOTO/VIDEO YG RUSAK BISA VIA CHAT/WA & BERBAHASA YG SOPAN DAN HALUS DAN PASTINYA BISA KASIH NILAI YG BAGUS DAN BINTANG\n' +
              '\n' +
              'TIDAK BERLAKU UNTUK KERUSAKAN YANG DI SEBABKAN KARENA KELALAIAN KURIR PENGIRIMAN..\n' +
              'KARNA KAMI PASTIKAN SEBELUM KIRIM PRODUK KAMI DALAM KONDISI BAGUS DAN OKE SERTA TIDAK BONYOK/BUSUK...DAN KAMI KIRIMKAN FOTONYA SEBELOM KIRIM VIA CHAT APLIKASI\n' +
              '\n' +
              'JASA PENGIRIMAN\n' +
              'pengiriman senin s/d sabtu via grab/gojek samday/instan\n' +
              'samday gojek 9pagi s/d 3sore max 7kg\n' +
              'instan gojek 8pagi s/d 4sore max 20kg\n' +
              'grab samday 9pagi s/d 4sore max 7kg\n' +
              'grab instan 8pagi s/d 4sore max 20kg\n' +
              'order sebelum jam tersebut di kirim di hari yg sama apabila melewati jam 16,00 kirim esoknya\n' +
              'langsung saja order pasti di proses karna pengiriman tiap hari...makasih semoga para pelangganku sehat selalu🙏👍\n' +
              '#sehat dimulai dari sekarang\n' +
              '#belanja aman dan bergaransi\n' +
              '#hanya di istanabuah',
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
          berat: 500,
          kategori: "Makanan",
          kondisi: Kondisi.Baru,
          deskripsi: '☑️ Penawaran Harga Murah, karena langsung dari Agen\n' +
              '\n' +
              '☑️ Di sarankan dengan kurir Instan / Sameday, pengiriman Reguler tetap kami proses dengan baik, namun segala resiko di tanggung pemesan 🙏\n' +
              '\n' +
              '☑️ Pemilihan Buah dengan baik & di timbang dengan timbangan Digital\n' +
              '\n' +
              '☑️ Bantu kami dengan ulasan positif & Bintang 5 terbaiknya ya kak 🙂\n' +
              '\n' +
              '☑️ Terimakasih telah mempercayakan kepada kami, semoga membawa berkah untuk kita semua, Amiin 🤲',
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
          berat: 500,
          kategori: "Makanan",
          kondisi: Kondisi.Baru,
          deskripsi: '• ORDER SEBELUM PUKUL 21.00 WIB DIKIRIM H+1\n' +
              '• ORDER SETELAH PUKUL 21.00 WIB DIKIRIM H+2\n' +
              '\n' +
              '✓ DILAKUKAN SETIAP HARI (SENIN-MINGGU)\n' +
              '✓PENGIRIMAN HANYA MENGGUNAKAN KURIR GOJEK/GRAB y MENGANTISIPASI KERUSAKAN/KEBUSUKAN\n' +
              '✓BERAT, WARNA DAN UKURAN DAPAT BERUBAH TERGANTUNG MUSIM DAN KUALITAS PANEN',
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
          berat: 500,
          kategori: "Makanan",
          kondisi: Kondisi.Baru,
          deskripsi:
              'Manfaat Pisang:\n✅Melancarkan saluran pencernaan\n✅Sumber energi untuk tubuh\n✅Mencegah kerusakan sel dan jaringan tubuh\n✅Menjaga kesehatan jantung',
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
          berat: 500,
          kategori: "Hiburan",
          kondisi: Kondisi.Baru,
          deskripsi: 'Bersama Awesome Travel Perjalanan Luar Negeri Anda Tak Terlupakan\n' +
              '\n' +
              'Apakah Anda ingin menjelajahi dunia dengan cara yang tak terlupakan? Nikmati pengalaman perjalanan luar negeri yang penuh petualangan, keajaiban budaya, dan kenangan indah bersama layanan perjalanan kami. Kami siap membantu Anda merencanakan perjalanan impian Anda ke destinasi internasional favorit atau tempat-tempat eksotis yang belum pernah Anda kunjungi sebelumnya.\n' +
              '\n' +
              'Apa yang Kami Tawarkan:\n' +
              '\n' +
              'Rencana Perjalanan yang Disesuaikan: Setiap perjalanan adalah unik, dan kami memahami bahwa kebutuhan dan preferensi setiap pelanggan berbeda. Tim ahli kami akan bekerja sama dengan Anda untuk merancang rencana perjalanan yang sesuai dengan minat, anggaran, dan jadwal Anda.\n' +
              '\n' +
              'Akomodasi Berkualitas Tinggi: Kami bekerja dengan jaringan mitra akomodasi yang terpercaya untuk memastikan Anda mendapatkan penginapan berkualitas tinggi selama perjalanan Anda. Hotel, vila, resor, atau akomodasi khusus lainnya - kami akan memenuhi preferensi Anda.\n' +
              '\n' +
              'Pemandu Lokal Berpengalaman: Agar Anda dapat merasakan budaya dan keindahan lokal dengan lebih dalam, kami menyediakan pemandu lokal berpengalaman. Mereka akan membantu Anda menjelajahi tempat-tempat menarik, memberikan wawasan tentang sejarah dan budaya, serta memastikan Anda merasa nyaman dan aman.\n' +
              '\n' +
              'Aktivitas dan Wisata Menarik: Dari kunjungan ke tempat wisata ikonik hingga pengalaman kultural yang otentik, kami akan mengatur berbagai aktivitas yang akan memenuhi ekspektasi Anda. Snorkeling di pantai tropis, menjelajahi situs bersejarah, berbelanja di pasar lokal, atau mencicipi kuliner khas daerah - pilih sesuai minat Anda.\n' +
              '\n' +
              'Dukungan 24/7: Kami menyediakan dukungan selama 24 jam sehari, 7 hari seminggu, sehingga Anda dapat memiliki ketenangan pikiran saat menjelajahi tempat baru. Jika Anda memerlukan bantuan atau informasi tambahan, tim kami siap membantu.\n' +
              '\n' +
              'Kenikmatan Perjalanan Tanpa Khawatir\n' +
              '\n' +
              'Nikmati perjalanan luar negeri tanpa khawatir tentang perencanaan yang rumit. Dengan layanan perjalanan kami, Anda dapat fokus menikmati setiap momen berharga tanpa harus khawatir tentang detail teknis. Hubungi kami hari ini untuk memulai perjalanan Anda menuju petualangan internasional yang tak terlupakan!\n' +
              '\n' +
              'Jadikan setiap detik berharga dalam perjalanan luar negeri Anda dengan layanan perjalanan kami yang profesional dan berpengalaman.\n' +
              'Anda dapat menyesuaikan deskripsi di atas sesuai dengan tujuan, layanan, dan nuansa yang ingin Anda sampaikan dalam penawaran jasa perjalanan luar negeri Anda.',
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
          berat: 500,
          kategori: "Hiburan",
          kondisi: Kondisi.Baru,
          deskripsi: 'Bersama Awesome Travel Perjalanan Luar Negeri Anda Tak Terlupakan\n' +
              '\n' +
              'Apakah Anda ingin menjelajahi dunia dengan cara yang tak terlupakan? Nikmati pengalaman perjalanan luar negeri yang penuh petualangan, keajaiban budaya, dan kenangan indah bersama layanan perjalanan kami. Kami siap membantu Anda merencanakan perjalanan impian Anda ke destinasi internasional favorit atau tempat-tempat eksotis yang belum pernah Anda kunjungi sebelumnya.\n' +
              '\n' +
              'Apa yang Kami Tawarkan:\n' +
              '\n' +
              'Rencana Perjalanan yang Disesuaikan: Setiap perjalanan adalah unik, dan kami memahami bahwa kebutuhan dan preferensi setiap pelanggan berbeda. Tim ahli kami akan bekerja sama dengan Anda untuk merancang rencana perjalanan yang sesuai dengan minat, anggaran, dan jadwal Anda.\n' +
              '\n' +
              'Akomodasi Berkualitas Tinggi: Kami bekerja dengan jaringan mitra akomodasi yang terpercaya untuk memastikan Anda mendapatkan penginapan berkualitas tinggi selama perjalanan Anda. Hotel, vila, resor, atau akomodasi khusus lainnya - kami akan memenuhi preferensi Anda.\n' +
              '\n' +
              'Pemandu Lokal Berpengalaman: Agar Anda dapat merasakan budaya dan keindahan lokal dengan lebih dalam, kami menyediakan pemandu lokal berpengalaman. Mereka akan membantu Anda menjelajahi tempat-tempat menarik, memberikan wawasan tentang sejarah dan budaya, serta memastikan Anda merasa nyaman dan aman.\n' +
              '\n' +
              'Aktivitas dan Wisata Menarik: Dari kunjungan ke tempat wisata ikonik hingga pengalaman kultural yang otentik, kami akan mengatur berbagai aktivitas yang akan memenuhi ekspektasi Anda. Snorkeling di pantai tropis, menjelajahi situs bersejarah, berbelanja di pasar lokal, atau mencicipi kuliner khas daerah - pilih sesuai minat Anda.\n' +
              '\n' +
              'Dukungan 24/7: Kami menyediakan dukungan selama 24 jam sehari, 7 hari seminggu, sehingga Anda dapat memiliki ketenangan pikiran saat menjelajahi tempat baru. Jika Anda memerlukan bantuan atau informasi tambahan, tim kami siap membantu.\n' +
              '\n' +
              'Kenikmatan Perjalanan Tanpa Khawatir\n' +
              '\n' +
              'Nikmati perjalanan luar negeri tanpa khawatir tentang perencanaan yang rumit. Dengan layanan perjalanan kami, Anda dapat fokus menikmati setiap momen berharga tanpa harus khawatir tentang detail teknis. Hubungi kami hari ini untuk memulai perjalanan Anda menuju petualangan internasional yang tak terlupakan!\n' +
              '\n' +
              'Jadikan setiap detik berharga dalam perjalanan luar negeri Anda dengan layanan perjalanan kami yang profesional dan berpengalaman.\n' +
              'Anda dapat menyesuaikan deskripsi di atas sesuai dengan tujuan, layanan, dan nuansa yang ingin Anda sampaikan dalam penawaran jasa perjalanan luar negeri Anda.',
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
          berat: 500,
          kategori: "Hiburan",
          kondisi: Kondisi.Baru,
          deskripsi: 'Bersama Awesome Travel Perjalanan Luar Negeri Anda Tak Terlupakan\n' +
              '\n' +
              'Apakah Anda ingin menjelajahi dunia dengan cara yang tak terlupakan? Nikmati pengalaman perjalanan luar negeri yang penuh petualangan, keajaiban budaya, dan kenangan indah bersama layanan perjalanan kami. Kami siap membantu Anda merencanakan perjalanan impian Anda ke destinasi internasional favorit atau tempat-tempat eksotis yang belum pernah Anda kunjungi sebelumnya.\n' +
              '\n' +
              'Apa yang Kami Tawarkan:\n' +
              '\n' +
              'Rencana Perjalanan yang Disesuaikan: Setiap perjalanan adalah unik, dan kami memahami bahwa kebutuhan dan preferensi setiap pelanggan berbeda. Tim ahli kami akan bekerja sama dengan Anda untuk merancang rencana perjalanan yang sesuai dengan minat, anggaran, dan jadwal Anda.\n' +
              '\n' +
              'Akomodasi Berkualitas Tinggi: Kami bekerja dengan jaringan mitra akomodasi yang terpercaya untuk memastikan Anda mendapatkan penginapan berkualitas tinggi selama perjalanan Anda. Hotel, vila, resor, atau akomodasi khusus lainnya - kami akan memenuhi preferensi Anda.\n' +
              '\n' +
              'Pemandu Lokal Berpengalaman: Agar Anda dapat merasakan budaya dan keindahan lokal dengan lebih dalam, kami menyediakan pemandu lokal berpengalaman. Mereka akan membantu Anda menjelajahi tempat-tempat menarik, memberikan wawasan tentang sejarah dan budaya, serta memastikan Anda merasa nyaman dan aman.\n' +
              '\n' +
              'Aktivitas dan Wisata Menarik: Dari kunjungan ke tempat wisata ikonik hingga pengalaman kultural yang otentik, kami akan mengatur berbagai aktivitas yang akan memenuhi ekspektasi Anda. Snorkeling di pantai tropis, menjelajahi situs bersejarah, berbelanja di pasar lokal, atau mencicipi kuliner khas daerah - pilih sesuai minat Anda.\n' +
              '\n' +
              'Dukungan 24/7: Kami menyediakan dukungan selama 24 jam sehari, 7 hari seminggu, sehingga Anda dapat memiliki ketenangan pikiran saat menjelajahi tempat baru. Jika Anda memerlukan bantuan atau informasi tambahan, tim kami siap membantu.\n' +
              '\n' +
              'Kenikmatan Perjalanan Tanpa Khawatir\n' +
              '\n' +
              'Nikmati perjalanan luar negeri tanpa khawatir tentang perencanaan yang rumit. Dengan layanan perjalanan kami, Anda dapat fokus menikmati setiap momen berharga tanpa harus khawatir tentang detail teknis. Hubungi kami hari ini untuk memulai perjalanan Anda menuju petualangan internasional yang tak terlupakan!\n' +
              '\n' +
              'Jadikan setiap detik berharga dalam perjalanan luar negeri Anda dengan layanan perjalanan kami yang profesional dan berpengalaman.\n' +
              'Anda dapat menyesuaikan deskripsi di atas sesuai dengan tujuan, layanan, dan nuansa yang ingin Anda sampaikan dalam penawaran jasa perjalanan luar negeri Anda.',
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
          berat: 500,
          kategori: "Hiburan",
          kondisi: Kondisi.Baru,
          deskripsi: 'Bersama Awesome Travel Perjalanan Luar Negeri Anda Tak Terlupakan\n' +
              '\n' +
              'Apakah Anda ingin menjelajahi dunia dengan cara yang tak terlupakan? Nikmati pengalaman perjalanan luar negeri yang penuh petualangan, keajaiban budaya, dan kenangan indah bersama layanan perjalanan kami. Kami siap membantu Anda merencanakan perjalanan impian Anda ke destinasi internasional favorit atau tempat-tempat eksotis yang belum pernah Anda kunjungi sebelumnya.\n' +
              '\n' +
              'Apa yang Kami Tawarkan:\n' +
              '\n' +
              'Rencana Perjalanan yang Disesuaikan: Setiap perjalanan adalah unik, dan kami memahami bahwa kebutuhan dan preferensi setiap pelanggan berbeda. Tim ahli kami akan bekerja sama dengan Anda untuk merancang rencana perjalanan yang sesuai dengan minat, anggaran, dan jadwal Anda.\n' +
              '\n' +
              'Akomodasi Berkualitas Tinggi: Kami bekerja dengan jaringan mitra akomodasi yang terpercaya untuk memastikan Anda mendapatkan penginapan berkualitas tinggi selama perjalanan Anda. Hotel, vila, resor, atau akomodasi khusus lainnya - kami akan memenuhi preferensi Anda.\n' +
              '\n' +
              'Pemandu Lokal Berpengalaman: Agar Anda dapat merasakan budaya dan keindahan lokal dengan lebih dalam, kami menyediakan pemandu lokal berpengalaman. Mereka akan membantu Anda menjelajahi tempat-tempat menarik, memberikan wawasan tentang sejarah dan budaya, serta memastikan Anda merasa nyaman dan aman.\n' +
              '\n' +
              'Aktivitas dan Wisata Menarik: Dari kunjungan ke tempat wisata ikonik hingga pengalaman kultural yang otentik, kami akan mengatur berbagai aktivitas yang akan memenuhi ekspektasi Anda. Snorkeling di pantai tropis, menjelajahi situs bersejarah, berbelanja di pasar lokal, atau mencicipi kuliner khas daerah - pilih sesuai minat Anda.\n' +
              '\n' +
              'Dukungan 24/7: Kami menyediakan dukungan selama 24 jam sehari, 7 hari seminggu, sehingga Anda dapat memiliki ketenangan pikiran saat menjelajahi tempat baru. Jika Anda memerlukan bantuan atau informasi tambahan, tim kami siap membantu.\n' +
              '\n' +
              'Kenikmatan Perjalanan Tanpa Khawatir\n' +
              '\n' +
              'Nikmati perjalanan luar negeri tanpa khawatir tentang perencanaan yang rumit. Dengan layanan perjalanan kami, Anda dapat fokus menikmati setiap momen berharga tanpa harus khawatir tentang detail teknis. Hubungi kami hari ini untuk memulai perjalanan Anda menuju petualangan internasional yang tak terlupakan!\n' +
              '\n' +
              'Jadikan setiap detik berharga dalam perjalanan luar negeri Anda dengan layanan perjalanan kami yang profesional dan berpengalaman.\n' +
              'Anda dapat menyesuaikan deskripsi di atas sesuai dengan tujuan, layanan, dan nuansa yang ingin Anda sampaikan dalam penawaran jasa perjalanan luar negeri Anda.',
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
          berat: 500,
          kategori: "Pakaian Wanita",
          kondisi: Kondisi.Baru,
          deskripsi:
              "Batik Batik Prabuseno adalah pilihan yang tepat untuk Anda yang ingin tampil gaya dengan nuansa tradisional Indonesia. Batik ini memiliki desain yang unik dengan motif batik khas Indonesia yang dipadukan dengan sentuhan modern yang elegan.\n\nBatik  Prabuseno terbuat dari bahan berkualitas tinggi yang nyaman dipakai dan cocok untuk berbagai acara, baik formal maupun santai. Bahan yang digunakan juga mudah dirawat dan tahan lama, sehingga Anda bisa memakainya dalam waktu yang lama.\n\nSelain itu, Batik Prabuseno juga hadir dengan berbagai ukuran dan warna yang sesuai dengan selera dan kebutuhan Anda. Kualitas dan desainnya yang eksklusif membuat kemeja batik ini cocok untuk dijadikan pilihan untuk acara-acara penting atau untuk dipakai sehari-hari.",
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
          berat: 500,
          kategori: "Pakaian Wanita",
          kondisi: Kondisi.Baru,
          deskripsi:
              "Batik Batik Prabuseno adalah pilihan yang tepat untuk Anda yang ingin tampil gaya dengan nuansa tradisional Indonesia. Batik ini memiliki desain yang unik dengan motif batik khas Indonesia yang dipadukan dengan sentuhan modern yang elegan.\n\nBatik  Prabuseno terbuat dari bahan berkualitas tinggi yang nyaman dipakai dan cocok untuk berbagai acara, baik formal maupun santai. Bahan yang digunakan juga mudah dirawat dan tahan lama, sehingga Anda bisa memakainya dalam waktu yang lama.\n\nSelain itu, Batik Prabuseno juga hadir dengan berbagai ukuran dan warna yang sesuai dengan selera dan kebutuhan Anda. Kualitas dan desainnya yang eksklusif membuat kemeja batik ini cocok untuk dijadikan pilihan untuk acara-acara penting atau untuk dipakai sehari-hari.",
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
          berat: 500,
          kategori: "Pakaian Anak",
          kondisi: Kondisi.Baru,
          deskripsi:
              "Batik Batik Prabuseno adalah pilihan yang tepat untuk Anda yang ingin tampil gaya dengan nuansa tradisional Indonesia. Batik ini memiliki desain yang unik dengan motif batik khas Indonesia yang dipadukan dengan sentuhan modern yang elegan. (Ini contoh text hanya 5 baris)",
          // \n\nBatik  Prabuseno terbuat dari bahan berkualitas tinggi yang nyaman dipakai dan cocok untuk berbagai acara, baik formal maupun santai. Bahan yang digunakan juga mudah dirawat dan tahan lama, sehingga Anda bisa memakainya dalam waktu yang lama.\n\nSelain itu, Batik Prabuseno juga hadir dengan berbagai ukuran dan warna yang sesuai dengan selera dan kebutuhan Anda. Kualitas dan desainnya yang eksklusif membuat kemeja batik ini cocok untuk dijadikan pilihan untuk acara-acara penting atau untuk dipakai sehari-hari.",

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
          berat: 500,
          kategori: "Pakaian Anak",
          kondisi: Kondisi.Baru,
          deskripsi:
              "Batik Batik Prabuseno adalah pilihan yang tepat untuk Anda yang ingin tampil gaya dengan nuansa tradisional Indonesia. Batik ini memiliki desain yang unik dengan motif batik khas Indonesia yang dipadukan dengan sentuhan modern yang elegan.\n\nBatik  Prabuseno terbuat dari bahan berkualitas tinggi yang nyaman dipakai dan cocok untuk berbagai acara, baik formal maupun santai. Bahan yang digunakan juga mudah dirawat dan tahan lama, sehingga Anda bisa memakainya dalam waktu yang lama.\n\nSelain itu, Batik Prabuseno juga hadir dengan berbagai ukuran dan warna yang sesuai dengan selera dan kebutuhan Anda. Kualitas dan desainnya yang eksklusif membuat kemeja batik ini cocok untuk dijadikan pilihan untuk acara-acara penting atau untuk dipakai sehari-hari.",
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
          berat: 500,
          kategori: "Makanan",
          kondisi: Kondisi.Baru,
          deskripsi: '- Minuman yang cocok sekali bila diminum saat dahaga di siang hari yang panas dan terik.\n' +
              '\n' +
              '- Minuman yang dapat dikonsumsi bagi semua orang, baik anak-anak, dewasa maupun anak muda.\n' +
              '\n' +
              '- Minuman pilihan kreasi yang bisa menemani acara kumpul keluarga.\n' +
              '\n' +
              'Untuk mengetahui info lebih lanjut hubungi : 089693677100 / 089508780953\n' +
              '\n' +
              'Produk ini tersedia juga di Grab Food, GoFood, Travelokaeats.',
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
          berat: 500,
          kategori: "Makanan",
          kondisi: Kondisi.Baru,
          deskripsi: '- Minuman yang cocok sekali bila diminum saat dahaga di siang hari yang panas dan terik.\n' +
              '\n' +
              '- Minuman yang dapat dikonsumsi bagi semua orang, baik anak-anak, dewasa maupun anak muda.\n' +
              '\n' +
              '- Minuman pilihan kreasi yang bisa menemani acara kumpul keluarga.\n' +
              '\n' +
              'Untuk mengetahui info lebih lanjut hubungi : 089693677100 / 089508780953\n' +
              '\n' +
              'Produk ini tersedia juga di Grab Food, GoFood, Travelokaeats.',
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
          berat: 500,
          kategori: "Makanan",
          kondisi: Kondisi.Baru,
          deskripsi: '- Minuman yang cocok sekali bila diminum saat dahaga di siang hari yang panas dan terik.\n' +
              '\n' +
              '- Minuman yang dapat dikonsumsi bagi semua orang, baik anak-anak, dewasa maupun anak muda.\n' +
              '\n' +
              '- Minuman pilihan kreasi yang bisa menemani acara kumpul keluarga.\n' +
              '\n' +
              'Untuk mengetahui info lebih lanjut hubungi : 089693677100 / 089508780953\n' +
              '\n' +
              'Produk ini tersedia juga di Grab Food, GoFood, Travelokaeats.',
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
          berat: 500,
          kategori: "Makanan",
          kondisi: Kondisi.Baru,
          deskripsi: '- Minuman yang cocok sekali bila diminum saat dahaga di siang hari yang panas dan terik.\n' +
              '\n' +
              '- Minuman yang dapat dikonsumsi bagi semua orang, baik anak-anak, dewasa maupun anak muda.\n' +
              '\n' +
              '- Minuman pilihan kreasi yang bisa menemani acara kumpul keluarga.\n' +
              '\n' +
              'Untuk mengetahui info lebih lanjut hubungi : 089693677100 / 089508780953\n' +
              '\n' +
              'Produk ini tersedia juga di Grab Food, GoFood, Travelokaeats.',
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
          berat: 870.5,
          kategori: "Pakaian Wanita",
          kondisi: Kondisi.Baru,
          deskripsi: null,
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
          berat: 102.30,
          kategori: "Pakaian Wanita",
          kondisi: Kondisi.Baru,
          deskripsi: null,
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
          berat: 500,
          kategori: "Pakaian Wanita",
          kondisi: Kondisi.Baru,
          deskripsi: null,
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
          berat: 90.20,
          kategori: "Pakaian Wanita",
          kondisi: Kondisi.Baru,
          deskripsi: null,
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
          berat: 500,
          kategori: "Jasa",
          kondisi: Kondisi.Baru,
          deskripsi: null,
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
          berat: 500,
          kategori: "Jasa",
          kondisi: Kondisi.Baru,
          deskripsi: null,
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
          berat: 500,
          kategori: "Jasa",
          kondisi: Kondisi.Baru,
          deskripsi: null,
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
          berat: 500,
          kategori: "Jasa",
          kondisi: Kondisi.Baru,
          deskripsi: null,
          timeStamp: '2023-07-04 15:30:00',
        ),
      ],
    ),
  ];
}
