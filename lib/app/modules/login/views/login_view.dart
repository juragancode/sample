import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:text_divider/text_divider.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/widgets/buttonGoogle.dart';
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
                    width: 104.w,
                    height: 104.w,
                    child: Image.asset(
                      "assets/icons/iconGAS.png",
                      fit: BoxFit.contain,
                    ),
                    // color: Colors.amber,
                  ),
                ),

                SizedBox(height: 12.w),
                Row(
                  children: [
                    SizedBox(width: 34.w),
                    Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.w),
                Container(
                  height: 40.w,
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.r),
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
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 16.w),
                      hintStyle: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA0A0A0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.w),
                Row(
                  children: [
                    SizedBox(width: 34.w),
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.w),
                Container(
                  height: 40.w,
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.r),
                    color: Color(0xFFF0F0F0),

                    /// Warna untuk test
                    // color: Color.fromARGB(255, 154, 154, 154),
                  ),
                  child: Obx(
                    () => TextField(
                      focusNode: controller.passLoginFN,
                      controller: controller.passLoginC,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      obscureText: controller.obscureTextDaftar.value,
                      obscuringCharacter: '*',
                      autocorrect: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Masukkan password',
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 16.w),
                        hintStyle: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA0A0A0),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            controller.obscureTextDaftar.value =
                                !controller.obscureTextDaftar.value;
                          },
                          child: Padding(
                            padding: EdgeInsets.only(right: 25.w),
                            child: Icon(
                              controller.obscureTextDaftar.value
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
                SizedBox(height: 14.w),
                // Stack(
                //   alignment: AlignmentDirectional.center,
                //   children: [
                //     Obx(
                //       () => Container(
                //         child: CheckboxListTile(
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(4.r),
                //           ),
                //           activeColor: Color(0xFF216BC9),
                //           controlAffinity: ListTileControlAffinity.leading,
                //           value: controller.ingatSaya.value,
                //           onChanged: (value) {
                //             controller.ingatSaya.toggle();
                //           },
                //           title: Text(
                //             "ingat saya",
                //             style: TextStyle(
                //               color: Color(0xFF333333),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //     Align(
                //       alignment: Alignment.centerRight,
                //       child: Padding(
                //         padding: EdgeInsets.only(right: 16.w),
                //         child: TextButton(
                //           onPressed: () => Get.toNamed(Routes.LUPA_PASSWORD),
                //           child: Text(
                //             "Lupa Password?",
                //             style: TextStyle(
                //               fontSize: 12.sp,
                //               fontFamily: 'Poppins',
                //               fontWeight: FontWeight.w600,
                //               color: Color(0xFF216BC9),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller.ingatSaya.value =
                                  !controller.ingatSaya.value;
                            },
                            child: Obx(
                              () => Container(
                                height: 19.w,
                                width: 19.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.r),

                                  // color: Color(0xFFB5B5B5),
                                  gradient: LinearGradient(
                                    colors: controller.ingatSaya.value
                                        ? [
                                            Color(0xFF4D89D4),
                                            Color(0xFF216BC9),
                                          ]
                                        : [
                                            Color(0xFFB5B5B5),
                                            Color(0xFFB5B5B5),
                                          ], // Daftar warna gradient yang ingin digunakan
                                    begin: Alignment
                                        .topCenter, // Posisi awal gradient
                                    end: Alignment
                                        .bottomCenter, // Posisi akhir gradient
                                  ),
                                ),
                                child: Icon(
                                  CupertinoIcons.checkmark_alt,
                                  size: 21.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            "Ingat saya",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () => Get.toNamed(Routes.LUPA_PASSWORD),
                        child: Text(
                          "Lupa Password?",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF216BC9),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 20.w),
                SizedBox(height: 14.w),

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
                      borderRadius: BorderRadius.circular(32.r),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        textStyle: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.r),
                        ),
                        fixedSize: Size(343.w, 42.w),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          // color: Color(0xFF216BC9),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.w),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.r),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Color(0xFF216BC9), width: 1.w),
                        backgroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.r),
                        ),
                        fixedSize: Size(343.w, 42.w),
                      ),
                      onPressed: () => Get.toNamed(Routes.REGISTER),
                      child: Text(
                        "Daftar",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF216BC9),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.w),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: TextDivider(
                    text: Text(
                      "atau masuk dengan",
                      style: TextStyle(
                        color: Color(0xFF858585),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    color: Color(0xFF858585),
                  ),
                ),
                SizedBox(height: 16.w),

                ButtonGoogleAuth(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum punya akun GAS?",
                      style: TextStyle(
                        fontSize: 12.sp,
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
                          fontSize: 12.sp,
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
