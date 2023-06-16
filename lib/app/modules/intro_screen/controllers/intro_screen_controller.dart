import 'package:get/get.dart';
import 'package:flutter/material.dart';

class IntroScreenController extends GetxController {
  final RxInt currentIndex = 0.obs;
  final PageController initialP = PageController(initialPage: 0);
  final PageController secondP = PageController(initialPage: 0);
}
