import 'package:flutter/material.dart';

class FilterUrutkan {
  late String? title;
  late IconData? icon;

  FilterUrutkan({
    required this.title,
    this.icon,
  });
}

class FilterUrutkanList {
  final List<FilterUrutkan> filter_urutkans = [
    FilterUrutkan(
      title: "Paling Sesuai",
      icon: null,
    ),
    FilterUrutkan(
      title: "4 ke atas",
      icon: Icons.star_rounded,
    ),
    FilterUrutkan(
      title: "Terbaru",
      icon: null,
    ),
    FilterUrutkan(
      title: "Terlaris",
      icon: null,
    ),
    FilterUrutkan(
      title: "Harga Terendah",
      icon: null,
    ),
    FilterUrutkan(
      title: "Harga Tertinggi",
      icon: null,
    ),
  ];
}
