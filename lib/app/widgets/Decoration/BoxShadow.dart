import 'package:flutter/material.dart';

BoxShadow BoxShadow_00() {
  return BoxShadow(
    color: Color(0xFF000000).withOpacity(0.075),
    offset: Offset(0, -1),
    blurRadius: 10,
    spreadRadius: 4,
  );
}

BoxShadow BoxShadow_01() {
  return BoxShadow(
    color: Color(0xFF000000).withOpacity(0.075),
    offset: Offset(0, 5),
    blurRadius: 10,
    spreadRadius: 4,
  );
}

BoxShadow BoxShadow_02() {
  return BoxShadow(
    color: Color(0xFF262626).withOpacity(0.075),
    offset: Offset(0, 5),
    blurRadius: 10,
    spreadRadius: 4,
  );
}

BoxShadow BoxShadow_Test() {
  return BoxShadow(
    color: Color(0xFF262626).withOpacity(0.25),
    offset: Offset(0, 5),
    blurRadius: 10,
    spreadRadius: 4,
  );
}
