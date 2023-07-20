import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData themeGAS() => ThemeData(
      fontFamily: 'Poppins',
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          fontSize: 12.sp,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          color: Color(0xFFA0A0A0),
        ),
      ),
      appBarTheme: AppBarGAS(),
    );

AppBarTheme AppBarGAS() {
  return AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
}
