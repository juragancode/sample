import 'package:flutter/material.dart';
import 'package:g_a_s_app_rekadigi/app/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../controllers/introduction_screen_controller.dart';

class IntroductionScreenView extends GetView<IntroductionScreenController> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Title of blue page",
          body:
              "Welcome to the app! This is a description on a page with a blue background.",
          image: Center(
            child: Image.network(
              "https://picsum.photos/id/237/200/300",
              height: 175.0,
            ),
          ),
          decoration: const PageDecoration(
            pageColor: Colors.blue,
          ),
        ),
        PageViewModel(
          title: "Title of orange text and bold page",
          body:
              "This is a description on a page with an orange title and bold, big body.",
          image: const Center(
            child: Text("👋", style: TextStyle(fontSize: 100.0)),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.orange),
            bodyTextStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
        ),
        PageViewModel(
          title: "Title of custom button page",
          body: "This is a description on a page with a custom button below.",
          image: Image.network("https://picsum.photos/id/323/200/300",
              height: 175.0),
          footer: ElevatedButton(
            onPressed: () {
              // On button pressed
            },
            child: const Text("Let's Go!"),
          ),
        ),
        PageViewModel(
          title: "Title of custom body page",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Click on "),
              Icon(Icons.edit),
              Text(" to edit a post"),
            ],
          ),
          image: const Center(child: Icon(Icons.android)),
        ),
      ],
      done: Text("SELESAI...!!!!!"),
      next: Text("LANJUT...!!!!!"),
      onDone: () => Get.offAllNamed(Routes.LOGIN),
    );
  }
}
