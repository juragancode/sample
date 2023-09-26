import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import '../../modules/register/controllers/register_controller.dart';

final RegisterController controller = Get.find();

class TextfieldEmail extends StatelessWidget {
  const TextfieldEmail({
    super.key,
    required this.controller,
    required this.title,
    required this.focusNode,
    required this.textController,
    required this.textInputAction,
    required this.suffixIcon,
  });

  final RegisterController controller;
  final String title;
  final FocusNode focusNode;
  final TextEditingController textController;
  final TextInputAction textInputAction;
  final Widget suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 20.w),
            Obx(
              () => Text(
                title,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color:
                      controller.isValid || !controller.isTextFieldTapped.value
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
              focusNode: focusNode,
              controller: textController,
              textCapitalization: TextCapitalization.none,
              textInputAction: textInputAction,
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              style: TextStyle(
                decorationThickness: 0,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: controller.isValid ? H333333 : Error50,
              ),
              inputFormatters: [
                LowerCaseTextFormatter(),
              ],
              decoration: InputDecoration(
                border:
                    controller.isValid || !controller.isTextFieldTapped.value
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
                        : Error50,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.r),
                  borderSide: BorderSide(
                    color: controller.isValid ||
                            !controller.isTextFieldTapped.value
                        ? Colors.transparent
                        : Error50,
                  ),
                ),
                suffixIcon: suffixIcon,
                hintText: 'Ex: janedoe@email.com',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color:
                      controller.isValid || !controller.isTextFieldTapped.value
                          ? Neutral70
                          : Error10,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class LowerCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Mengonversi teks baru menjadi huruf kecil
    final newText = newValue.text.toLowerCase();
    return TextEditingValue(
      text: newText,
      selection: newValue.selection,
    );
  }
}
