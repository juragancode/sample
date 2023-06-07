import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:text_divider/text_divider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.emailDaftarFN.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: IconButton(
              onPressed: () {
                print("Back button pressed");
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                size: 31,
                color: Color(0xFFFFCA08),
              ),
            ),
          ),
          title: Text(
            'Daftar',
            style: TextStyle(
              color: Color(0xFF333333),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          // centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 104.sp,
                    height: 104.sp,
                    child: Image.asset(
                      "assets/icons/iconGAS.png",
                      fit: BoxFit.cover,
                    ),
                    // color: Colors.amber,
                  ),
                ),

                SizedBox(height: 12.sp),
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
                SizedBox(height: 4.sp),
                Container(
                  height: 40.sp,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Color(0xFFF0F0F0),
                  ),
                  child: TextField(
                    focusNode: controller.emailDaftarFN,
                    controller: controller.emailDaftarC,
                    textInputAction: TextInputAction.done,
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
                SizedBox(height: 8.sp),
                // SizedBox(height: 20.sp),
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
                        fixedSize: Size(343.w, 42.h),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Daftar",
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
                // SizedBox(height: 8).sp,
                SizedBox(height: 16.sp),
                Padding(
                  padding: const EdgeInsets.only(right: 8, left: 8),
                  child: TextDivider(
                    text: Text(
                      "atau masuk dengan",
                      style: TextStyle(
                        color: Color(0xFF858585),
                      ),
                    ),
                    color: Color(0xFF858585),
                  ),
                ),
                SizedBox(height: 16.sp),

                Center(
                  child: Flexible(
                    child: Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Color(0xFF216BC9), width: 1),
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          textStyle: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Wrap(
                            alignment: WrapAlignment.start,
                            children: [
                              Container(
                                width: 30.sp,
                                height: 30.sp,
                                child: SvgPicture.asset(
                                  "assets/icons/iconGoogle.svg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Google",
                                style: TextStyle(
                                  fontSize: 16.sp,
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
                  ),
                ),
                SizedBox(height: 16.h),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Obx(
                          () => Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            visualDensity:
                                const VisualDensity(horizontal: 0, vertical: 0),
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: controller.syaratKebijakanCheck.value,
                            onChanged: (value) {
                              controller.syaratKebijakanCheck.toggle();
                            },
                          ),
                        ),
                        Wrap(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "Dengan mendaftar, kamu menyetujui",
                                    style: new TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF858585),
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Syarat & \nKebijakan Privasi",
                                    style: new TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF216BC9),
                                    ),
                                  ),
                                  TextSpan(
                                    text: " GAS Indonesia.",
                                    style: new TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF858585),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
