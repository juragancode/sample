import 'package:flutter/material.dart';
import 'package:g_a_s_app_rekadigi/app/utils/theme.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: Routes.INTRODUCTION_SCREEN,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: themeGAS(),
    ),
  );
}
