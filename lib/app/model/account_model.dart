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
      image:
          "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg",
    ),
    Account(
      name: "Toko Rekadigi",
      typeAccount: "Akun Toko",
      image:
          "https://i.guim.co.uk/img/media/bb5e732bdd0ae3bafca2ca7182232a562a824dfa/0_331_6541_3924/master/6541.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=ed108787eb2a230fcbbbaf8682bff881",
    ),
    Account(
      name: "Naufal Wibawanto (Kasir)",
      typeAccount: "Akun Karyawan",
      image:
          "https://t3.ftcdn.net/jpg/05/78/94/30/360_F_578943050_k5WK1FpgkZrheRnEm4Ta0svlZy4eoe8f.jpg",
    ),
  ];
}
