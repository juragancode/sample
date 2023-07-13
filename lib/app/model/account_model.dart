class Account {
  final String name;
  final String typeAccount;
  final String image;

  Account({
    required this.name,
    required this.typeAccount,
    required this.image,
  });
}

class AccountList {
  final List<Account> accounts = [
    Account(
      name: "Naufal Wibawanto",
      typeAccount: "Akun Personal",
      image: "contoh-profil-1.png",
    ),
    Account(
      name: "Toko Rekadigi",
      typeAccount: "Akun Toko",
      image: "contoh-profil-2.png",
    ),
    Account(
      name: "Naufal Wibawanto (Kasir)",
      typeAccount: "Akun Karyawan",
      image: "contoh-profil-3.png",
    ),
  ];
}
