import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_a_s_app_rekadigi/app/utils/theme.dart';

import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        title: "Application",
        initialRoute: Routes.HOME,
        getPages: AppPages.routes,
        debugShowCheckedModeBanner: false,
        theme: themeGAS(),
        locale: Locale(
            'id_ID'), // Set bahasa awal menjadi bahasa Indonesia ('id_ID')
        fallbackLocale: Locale(
            'en_US'), // Set bahasa cadangan menjadi bahasa Indonesia ('en_US')
      ),
      useInheritedMediaQuery: true,
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
    );
  }
}
