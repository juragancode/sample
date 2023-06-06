import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:g_a_s_app_rekadigi/app/routes/app_pages.dart';

import 'package:get_storage/get_storage.dart';
import 'package:text_divider/text_divider.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    if (box.read("dataIngatSaya") != null) {
      controller.ingatSaya.value = true;
      controller.emailLoginC.text = box.read("dataIngatSaya")["email"];
      controller.passLoginC.text = box.read("dataIngatSaya")["password"];
    }

    return GestureDetector(
      onTap: () {
        controller.emailLoginFN.unfocus();
        controller.passLoginFN.unfocus();
      },
      child: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 104,
                    height: 104,
                    child: Image.asset(
                      "assets/icons/iconGAS.png",
                      fit: BoxFit.cover,
                    ),
                    // color: Colors.amber,
                  ),
                ),

                SizedBox(height: 12),
                Row(
                  children: [
                    SizedBox(width: 34),
                    Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Color(0xFFF0F0F0),
                  ),
                  child: TextField(
                    focusNode: controller.emailLoginFN,
                    controller: controller.emailLoginC,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ex: janedoe@email.com',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA0A0A0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    SizedBox(width: 34),
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Color(0xFFF0F0F0),
                  ),
                  child: Obx(
                    () => TextField(
                      focusNode: controller.passLoginFN,
                      controller: controller.passLoginC,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      obscureText: controller.obscureTextLogin.value,
                      autocorrect: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Masukkan password',
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 16),
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA0A0A0),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            controller.obscureTextLogin.value =
                                !controller.obscureTextLogin.value;
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Icon(
                              controller.obscureTextLogin.value
                                  ? CupertinoIcons.eye_slash_fill
                                  : CupertinoIcons.eye_fill,
                              color: Color(0xFF858585),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 20),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Obx(
                      () => Container(
                        child: CheckboxListTile(
                          activeColor: Color(0xFF216BC9),
                          controlAffinity: ListTileControlAffinity.leading,
                          value: controller.ingatSaya.value,
                          onChanged: (value) {
                            controller.ingatSaya.toggle();
                          },
                          title: Text(
                            "ingat saya",
                            style: TextStyle(
                              color: Color(0xFF333333),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: TextButton(
                          onPressed: () => Get.toNamed(Routes.LUPA_PASSWORD),
                          child: Text(
                            "Lupa Password?",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF216BC9),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: 20),
                Center(
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
                        minimumSize: Size(Get.width - 30, 42),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          // color: Color(0xFF216BC9),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Color(0xFF216BC9), width: 1),
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
                        minimumSize: Size(Get.width - 30, 42),
                      ),
                      onPressed: () => Get.toNamed(Routes.REGISTER),
                      child: Text(
                        "Daftar",
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
                SizedBox(height: 16),
                TextDivider(
                  text: Text(
                    "atau masuk dengan",
                    style: TextStyle(
                      color: Color(0xFF858585),
                    ),
                  ),
                  color: Color(0xFF858585),
                ),
                SizedBox(height: 16),

                Center(
                  child: Container(
                    height: 42,
                    width: 130,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Color(0xFF216BC9), width: 1),
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
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            child: SvgPicture.asset(
                              "assets/icons/iconGoogle.svg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Google",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF216BC9),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum punya akun GAS?",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF858585),
                      ),
                    ),
                    // SizedBox(width: 5),
                    TextButton(
                      onPressed: () => Get.toNamed(Routes.REGISTER),
                      child: Text(
                        "Daftar",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF216BC9),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
