import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../controllers/introduction_screen_controller.dart';

class IntroductionScreenView extends GetView<IntroductionScreenController> {
  List<PageViewModel> screenAwal() {
    return [
      PageViewModel(
        title: "Selamat datang!",
        body: "Ini adalah pengantar aplikasi.",
        image: Image.asset('assets/intro_image_1.png'),
      ),
      PageViewModel(
        title: "Fitur 1",
        body: "Ini adalah fitur 1 aplikasi.",
        image: Image.asset('assets/intro_image_2.png'),
      ),
      PageViewModel(
        title: "Fitur 2",
        body: "Ini adalah fitur 2 aplikasi.",
        image: Image.asset('assets/intro_image_3.png'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: IntroductionScreen(
        pages: screenAwal(),
        onDone: () {
          // Aksi ketika pengguna selesai dengan layar pengantar
        },
        onSkip: () {
          // Aksi ketika pengguna melewati layar pengantar
        },
        showSkipButton: true,
        skip: const Text("LEWATI"),
        done: const Text("SELESAI"),
      ),
    );

    // Scaffold(
    //   appBar: AppBar(
    //     title: Text('IntroductionScreenView'),
    //     centerTitle: true,
    //   ),

    //   body: Center(
    //     child: Text(
    //       'IntroductionScreenView is working',
    //       style: TextStyle(fontSize: 20),
    //     ),
    //   ),
    // )
  }
}
