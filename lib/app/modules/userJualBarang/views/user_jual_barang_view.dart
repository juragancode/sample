import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:g_a_s_app_rekadigi/app/modules/userJualBarang/views/addproductdetail_view.dart';
import 'package:g_a_s_app_rekadigi/app/modules/userJualBarang/views/selectcategory_view.dart';
import 'package:g_a_s_app_rekadigi/app/utils/navigator_helper.dart';

import 'package:get/get.dart';

import '../controllers/user_jual_barang_controller.dart';

class UserJualBarangView extends GetView<UserJualBarangController> {
  const UserJualBarangView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark));
    return WillPopScope(
      onWillPop: () async {
        SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light));
        await Future.delayed(Duration.zero);
        return true;
      },
      child: GetBuilder<UserJualBarangController>(
          builder: (_) => Navigator(
                key: NavigatorHelper.userJualBarangNav,
                initialRoute: '/',
                onGenerateRoute: (settings) {
                  Widget page;
                  switch (settings.name) {
                    case userJualBarangRoutes.selectCategory:
                      page = SelectCategoryView();
                      break;
                    case userJualBarangRoutes.addProductDetail:
                      page = AddProductDetail();
                      break;
                    default:
                      page = SelectCategoryView();
                      break;
                  }
                  return PageRouteBuilder(
                      pageBuilder: (_, __, ___) => page,
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return SlideTransition(
                          position: Tween(
                                  begin: Offset(1.0, 0.0),
                                  end: Offset(0.0, 0.0))
                              .animate(animation),
                          child: child,
                        );
                      },
                      transitionDuration: const Duration(milliseconds: 250));
                },
              )),
    );
  }
}
