import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/izinkan_akses_lokasi_controller.dart';

class IzinkanAksesLokasiView extends GetView<IzinkanAksesLokasiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IzinkanAksesLokasiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'IzinkanAksesLokasiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
