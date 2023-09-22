import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:text_divider/text_divider.dart';

import '../../../routes/app_pages.dart';
import '../../../widgets/buttonGoogle.dart';
// import '../../home/controllers/home_controller.dart';
import '../controllers/login_controller.dart';
import '../../../constant/colors.dart';
import '../../../widgets/Auth/ButtonCustom.dart';

// final LoginController controller = LoginController();

class LoginView extends GetView<LoginController> {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    if (box.hasData("dataIngatSaya")) {
      final dataIngatSaya = box.read("dataIngatSaya");
      controller.ingatSaya.value = true;
      controller.emailLoginC.text = dataIngatSaya["email"];
      controller.passLoginC.text = dataIngatSaya["password"];
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
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 104.w,
                    height: 104.w,
                    child: SvgPicture.asset(
                      "assets/icons/iconGAS.svg",
                      fit: BoxFit.contain,
                    ),
                    // color: Colors.amber,
                  ),
                ),
                SizedBox(height: 12.w),
                Row(
                  children: [
                    SizedBox(width: 34.w),
                    Obx(
                      () => Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: controller.isValid ||
                                  !controller.isTextFieldTapped.value
                              ? H333333
                              : Error50,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.w),
                Container(
                  height: 40.w,
                  margin: EdgeInsets.symmetric(horizontal: 16.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.r),
                    color: Color(0xFFF0F0F0),
                  ),
                  child: Obx(
                    () => TextField(
                      onTap: () {
                        if (!controller.isTextFieldTapped.value) {
                          controller.isTextFieldTapped.value = true;
                        }
                      },
                      onChanged: (value) {
                        controller.email.value = value;
                        controller.checkEmailValidity();
                      },
                      focusNode: controller.emailLoginFN,
                      controller: controller.emailLoginC,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      style: TextStyle(
                        decorationThickness: 0,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: controller.isValid ? H333333 : Error50,
                      ),
                      decoration: InputDecoration(
                        border: controller.isValid ||
                                !controller.isTextFieldTapped.value
                            ? InputBorder.none
                            : OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.r),
                              ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.r),
                          borderSide: BorderSide(
                            color: controller.isValid ||
                                    !controller.isTextFieldTapped.value
                                ? Colors.transparent
                                : Error50, // Warna tepi saat fokus
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.r),
                          borderSide: BorderSide(
                            color: controller.isValid ||
                                    !controller.isTextFieldTapped.value
                                ? Colors.transparent
                                : Error50, // Warna tepi saat tidak dalam fokus
                          ),
                        ),
                        suffixIcon: controller.isValid
                            ? Padding(
                                padding: EdgeInsets.only(right: 25.w),
                                child: Icon(
                                  CupertinoIcons.checkmark_alt_circle_fill,
                                  // Icons.check_circle,
                                  color: Success50,
                                ),
                              )
                            : null,
                        hintText: 'Ex: janedoe@email.com',
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.sp, vertical: 10.sp),
                        hintStyle: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA0A0A0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.sp),
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
                  margin: EdgeInsets.symmetric(horizontal: 16.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.r),
                    color: Color(0xFFF0F0F0),

                    /// Warna untuk test
                    // color: Color.fromARGB(255, 154, 154, 154),
                  ),
                  child: Obx(
                    () => TextField(
                      onChanged: (value) {
                        controller.PasswordTerisi();
                      },
                      style: TextStyle(
                        decorationThickness: 0,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: H333333,
                      ),
                      focusNode: controller.passLoginFN,
                      controller: controller.passLoginC,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      obscureText: controller.obscureTextDaftar.value,
                      obscuringCharacter: '*',
                      autocorrect: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Masukkan password'.tr,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.sp, vertical: 10.sp),
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
                SizedBox(height: 8.sp),
                Obx(
                  () => Visibility(
                    visible: !controller.isValid &&
                            controller.isTextFieldTapped.value ||
                        controller.emailAtauPassSalah.isTrue,
                    child: Row(
                      children: [
                        SizedBox(width: 21.42.w),
                        Icon(
                          Icons.info,
                          color: Error50,
                          size: 20.sp,
                        ),
                        SizedBox(width: 5.sp),
                        Text(
                          controller.emailAtauPassSalah.isTrue
                              ? "Email atau password salah.".tr
                              : controller.emailLoginC.text.isNotEmpty
                                  ? "Format email tidak valid.".tr
                                  : "Masukan email.".tr,
                          style: TextStyle(
                            fontSize: 11.5.w,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Error50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(height: 8.sp),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.ingatSaya.value =
                              !controller.ingatSaya.value;
                        },
                        child: Row(
                          children: [
                            Obx(
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
                                  // CupertinoIcons.checkmark_alt,
                                  // size: 21.sp,
                                  Icons.check_rounded,
                                  size: 16.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              "Ingat saya".tr,
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () => Get.toNamed(Routes.LUPA_PASSWORD),
                        child: Text(
                          "Lupa Password?".tr,
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
                SizedBox(height: 14.sp),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  child: Obx(
                    () => ButtonCustom(
                      gradient: LinearGradient(
                        colors: controller.loadingLogin == true
                            ? [
                                Primary10.withOpacity(0.8),
                                Primary10,
                              ]
                            : controller.isValid &&
                                    controller.passTerisi.value == true
                                ? [
                                    Primary30,
                                    Primary50,
                                  ]
                                : [
                                    Color(0xFFB5B5B5),
                                    Color(0xFFB5B5B5),
                                  ], // Daftar warna gradient yang ingin digunakan
                        begin: Alignment.topCenter, // Posisi awal gradient
                        end: Alignment.bottomCenter, // Posisi akhir gradient
                      ),
                      controllerLoading: controller.loadingLogin == true,
                      onTap: controller.isValid &&
                              controller.passLoginC.text.isNotEmpty &&
                              controller.loadingLogin.isFalse
                          ? () {
                              controller.emailLoginFN.unfocus();
                              controller.passLoginFN.unfocus();
                              controller.loginWithEmail();
                              print(controller.emailLoginC.text);
                              print(controller.passLoginC.text);
                            }
                          : () {},
                      splashFactory: controller.isValid &&
                              controller.passLoginC.text.isNotEmpty &&
                              controller.loadingLogin.isFalse
                          ? InkSplash.splashFactory
                          : NoSplash.splashFactory,
                      title: 'Login'.tr,
                    ),
                  ),
                ),

                // Center(
                //   child: DecoratedBox(
                //     decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //         colors: [
                //           Color(0xFF4D89D4),
                //           Color(0xFF216BC9),
                //         ], // Daftar warna gradient yang ingin digunakan
                //         begin: Alignment.topCenter, // Posisi awal gradient
                //         end: Alignment.bottomCenter, // Posisi akhir gradient
                //       ),
                //       borderRadius: BorderRadius.circular(32.r),
                //     ),
                //     child: Obx(
                //       () => ElevatedButton(
                //         style: ElevatedButton.styleFrom(
                //           backgroundColor: Colors.transparent,
                //           shadowColor: Colors.transparent,
                //           textStyle: TextStyle(
                //             fontSize: 16.sp,
                //             fontFamily: 'Poppins',
                //             fontWeight: FontWeight.w600,
                //           ),
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(32.r),
                //           ),
                //           fixedSize: Size(343.w, 42.w),
                //         ),
                //         onPressed: controller.passLoginC.text.isNotEmpty &&
                //                 controller.isValid
                //             ? () {
                //                 controller.emailLoginFN.unfocus();
                //                 controller.passLoginFN.unfocus();
                //                 Timer(
                //                   Duration(milliseconds: 500),
                //                   () {
                //                     controller.loginWithEmail();
                //                   },
                //                 );
                //               }
                //             : () {},
                //         child: Text(
                //           "Login",
                //           style: TextStyle(
                //             fontSize: 16.sp,
                //             fontFamily: 'Poppins',
                //             fontWeight: FontWeight.w600,
                //             // color: Color(0xFF216BC9),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(height: 8.w),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  child: InkWell(
                    onTap: () {
                      controller.emailLoginFN.unfocus();
                      controller.passLoginFN.unfocus();
                      Get.toNamed(Routes.REGISTER);
                    },
                    borderRadius: BorderRadius.circular(32.r),
                    splashColor: Primary50.withOpacity(0.1),
                    highlightColor: Primary50.withOpacity(0.2),
                    child: Container(
                      // height: 38.w,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.r),
                        border: Border.all(
                          color: Primary30,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.w),
                        child: Center(
                          child: Text(
                            "Daftar",
                            style: TextStyle(
                              fontSize: 15.5.w,
                              fontWeight: FontWeight.w600,
                              color: Primary50,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.r),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Color(0xFF216BC9), width: 1.w),
                        backgroundColor: Colors.white,
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
                      onPressed: () {
                        controller.emailLoginFN.unfocus();
                        controller.passLoginFN.unfocus();
                        Get.toNamed(Routes.REGISTER);
                      },
                      child: Text(
                        "Daftar".tr,
                        style: TextStyle(
                          fontSize: 15.5.w,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Primary50,
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
                      "atau masuk dengan".tr,
                      style: TextStyle(
                        color: Color(0xFF858585),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    color: Color(0xFF858585),
                  ),
                ),
                SizedBox(height: 16.w),
                ButtonGoogleAuth(),
                SizedBox(height: 16.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum punya akun GAS?".tr,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF858585),
                      ),
                    ),
                    SizedBox(width: 4.sp),
                    GestureDetector(
                      onTap: () {
                        controller.emailLoginFN.unfocus();
                        controller.passLoginFN.unfocus();
                        Get.toNamed(Routes.REGISTER);
                      },
                      child: Text(
                        "Daftar".tr,
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
