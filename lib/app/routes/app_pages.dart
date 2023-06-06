import 'package:get/get.dart';

import 'package:g_a_s_app_rekadigi/app/modules/home/bindings/home_binding.dart';
import 'package:g_a_s_app_rekadigi/app/modules/home/views/home_view.dart';
import 'package:g_a_s_app_rekadigi/app/modules/introduction_screen/bindings/introduction_screen_binding.dart';
import 'package:g_a_s_app_rekadigi/app/modules/introduction_screen/views/introduction_screen_view.dart';
import 'package:g_a_s_app_rekadigi/app/modules/login/bindings/login_binding.dart';
import 'package:g_a_s_app_rekadigi/app/modules/login/views/login_view.dart';
import 'package:g_a_s_app_rekadigi/app/modules/lupaPassword/bindings/lupa_password_binding.dart';
import 'package:g_a_s_app_rekadigi/app/modules/lupaPassword/views/lupa_password_view.dart';
import 'package:g_a_s_app_rekadigi/app/modules/register/bindings/register_binding.dart';
import 'package:g_a_s_app_rekadigi/app/modules/register/views/register_view.dart';

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
      page: () => IntroductionScreenView(),
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
  ];
}
