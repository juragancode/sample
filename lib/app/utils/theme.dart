import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData themeGAS() => ThemeData(
      fontFamily: 'Poppins',
      appBarTheme: AppBarGAS(),
    );

AppBarTheme AppBarGAS() {
  return AppBarTheme(
      // systemOverlayStyle: SystemUiOverlayStyle(
      //   statusBarColor: Color(0xfff0f0f0),
      //   // statusBarBrightness: Brightness.light,
      //   statusBarIconBrightness: Brightness.dark,
      // ),
      );
}
