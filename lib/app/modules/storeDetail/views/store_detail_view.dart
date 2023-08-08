import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/store_detail_controller.dart';

class StoreDetailView extends GetView<StoreDetailController> {
  const StoreDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StoreDetailView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'StoreDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
