import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/verifikasi_lupa_password_controller.dart';

class VerifikasiLupaPasswordView
    extends GetView<VerifikasiLupaPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VerifikasiLupaPasswordView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'VerifikasiLupaPasswordView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
