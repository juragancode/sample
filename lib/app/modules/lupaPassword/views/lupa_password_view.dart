import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/lupa_password_controller.dart';

class LupaPasswordView extends GetView<LupaPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LupaPasswordView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LupaPasswordView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
