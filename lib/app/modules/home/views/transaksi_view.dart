import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class TransaksiView extends GetView<HomeController> {
  const TransaksiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'TransaksiView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
