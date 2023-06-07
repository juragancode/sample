import 'package:flutter/material.dart';
import 'package:g_a_s_app_rekadigi/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../controllers/introduction_screen_controller.dart';

class IntroductionScreenView extends GetView<IntroductionScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 46),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 45),
                  child: TextButton(
                    onPressed: () => Get.toNamed(
                      Routes.LOGIN,
                    ),
                    child: Text(
                      "Lewati",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF216BC9),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 19.02),
              Center(
                child: Image.asset(
                  "assets/icons/Mesin-Kasir.png",
                  height: 462.02,
                  width: 343.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 23.98),
              Text(
                "Bisa Jadi Mesin Kasir",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF333333),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: Text(
                  "Permudah proses jual beli di tokomu dengan fitur Mesin Kasir di aplikasi GAS.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF858585),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF4D89D4),
                      Color(0xFF216BC9),
                    ], // Daftar warna gradient yang ingin digunakan
                    begin: Alignment.topCenter, // Posisi awal gradient
                    end: Alignment.bottomCenter, // Posisi akhir gradient
                  ),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    minimumSize: Size(Get.width - 30, 54),
                  ),
                  onPressed: () => Get.toNamed(Routes.LOGIN),
                  // onPressed: () {},
                  child: Text(
                    "Selanjutnya",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MultiUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 46),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 45),
                  child: TextButton(
                    onPressed: () => Get.toNamed(
                      Routes.LOGIN,
                    ),
                    child: Text(
                      "Lewati",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF216BC9),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 19.02),
              Center(
                child: Image.asset(
                  "assets/icons/Mesin-Kasir.png",
                  height: 462.02,
                  width: 343.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 23.98),
              Text(
                "Multi-User",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF333333),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: Text(
                  "Permudah proses jual beli di tokomu dengan fitur Mesin Kasir di aplikasi GAS.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF858585),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF4D89D4),
                      Color(0xFF216BC9),
                    ], // Daftar warna gradient yang ingin digunakan
                    begin: Alignment.topCenter, // Posisi awal gradient
                    end: Alignment.bottomCenter, // Posisi akhir gradient
                  ),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    minimumSize: Size(Get.width - 30, 54),
                  ),
                  // onPressed: () => Get.toNamed(Routes.VERIFIKASI_LUPA_PASSWORD),
                  onPressed: () {},
                  child: Text(
                    "Selanjutnya",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
