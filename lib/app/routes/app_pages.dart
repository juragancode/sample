import 'package:get/get.dart';

import '../modules/alihBahasa/bindings/alih_bahasa_binding.dart';
import '../modules/alihBahasa/views/alih_bahasa_view.dart';
import '../modules/aturUlangPassword/bindings/atur_ulang_password_binding.dart';
import '../modules/aturUlangPassword/views/atur_ulang_password_view.dart';
import '../modules/daftar/bindings/daftar_binding.dart';
import '../modules/daftar/views/daftar_view.dart';
import '../modules/explore/bindings/explore_binding.dart';
import '../modules/explore/views/explore_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/homeKaryawan/bindings/home_karyawan_binding.dart';
import '../modules/homeKaryawan/views/home_karyawan_view.dart';
import '../modules/homeToko/bindings/home_toko_binding.dart';
import '../modules/homeToko/views/home_toko_view.dart';
import '../modules/intro_screen/bindings/intro_screen_binding.dart';
import '../modules/intro_screen/views/intro_screen_view.dart';
import '../modules/izinkanAksesLokasi/bindings/izinkan_akses_lokasi_binding.dart';
import '../modules/izinkanAksesLokasi/views/izinkan_akses_lokasi_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/lupaPassword/bindings/lupa_password_binding.dart';
import '../modules/lupaPassword/views/lupa_password_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/verifikasiDaftar/bindings/verifikasi_daftar_binding.dart';
import '../modules/verifikasiDaftar/views/verifikasi_daftar_view.dart';
import '../modules/verifikasiLupaPassword/bindings/verifikasi_lupa_password_binding.dart';
import '../modules/verifikasiLupaPassword/views/verifikasi_lupa_password_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INTRODUCTION_SCREEN,
      page: () => IntroScreenView(),
      binding: IntroductionScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LUPA_PASSWORD,
      page: () => LupaPasswordView(),
      binding: LupaPasswordBinding(),
    ),
    GetPage(
      name: _Paths.VERIFIKASI_LUPA_PASSWORD,
      page: () => VerifikasiLupaPasswordView(),
      binding: VerifikasiLupaPasswordBinding(),
    ),
    GetPage(
      name: _Paths.ATUR_ULANG_PASSWORD,
      page: () => AturUlangPasswordView(),
      binding: AturUlangPasswordBinding(),
    ),
    GetPage(
      name: _Paths.VERIFIKASI_DAFTAR,
      page: () => VerifikasiDaftarView(),
      binding: VerifikasiDaftarBinding(),
    ),
    GetPage(
      name: _Paths.DAFTAR,
      page: () => DaftarView(),
      binding: DaftarBinding(),
    ),
    GetPage(
      name: _Paths.IZINKAN_AKSES_LOKASI,
      page: () => IzinkanAksesLokasiView(),
      binding: IzinkanAksesLokasiBinding(),
    ),
    GetPage(
      name: _Paths.ALIH_BAHASA,
      page: () => AlihBahasaView(),
      binding: AlihBahasaBinding(),
    ),
    GetPage(
      name: _Paths.EXPLORE,
      page: () => const ExploreView(),
      binding: ExploreBinding(),
    ),
    GetPage(
      name: _Paths.HOME_TOKO,
      page: () => const HomeTokoView(),
      binding: HomeTokoBinding(),
    ),
    GetPage(
      name: _Paths.HOME_KARYAWAN,
      page: () => const HomeKaryawanView(),
      binding: HomeKaryawanBinding(),
    ),
  ];
}
