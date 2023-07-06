import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_karyawan_controller.dart';

class HomeKaryawanView extends GetView<HomeKaryawanController> {
  const HomeKaryawanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeKaryawanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeKaryawanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
