import 'package:flutter/material.dart';

class Filter {
  late String? title;
  late IconData? icon;

  Filter({
    required this.title,
    this.icon,
  });
}

class FilterList {
  final List<Filter> filters = [
    Filter(
      title: "4 ke atas",
      icon: Icons.star_rate_rounded,
    ),
    Filter(
      title: "Terdekat",
      icon: null,
    ),
    Filter(
      title: "Paling Sesuai",
      icon: null,
    ),
    Filter(
      title: "Terlaris",
      icon: null,
    ),
  ];
}
