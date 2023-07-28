import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../widgets/backgroundHomePage.dart';
import '../controllers/home_controller.dart';

class Profil extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return SingleChildScrollView(
      child: Stack(
        children: [
          SizedBox(height: Get.height - 56),
          BackgroundHomePage(),
          Column(
            children: [
              //
            ],
          ),
        ],
      ),
    );
  }
}
