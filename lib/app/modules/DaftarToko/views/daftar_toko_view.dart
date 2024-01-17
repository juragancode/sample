import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../widgets/Decoration/BoxShadow.dart';
import '../controllers/daftar_toko_controller.dart';

class DaftarTokoView extends GetView<DaftarTokoController> {
  const DaftarTokoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.namaTokoFN.unfocus();
        controller.emailTokoFN.unfocus();
        controller.noHpTokoFN.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: BackgroundColor,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    width: Get.width,
                    height: 85.w,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow_03(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.sp),
                    child: Column(
                      children: [
                        SizedBox(height: 46.w),
                        Stack(
                          children: [
                            Row(
                              children: [
                                ClipOval(
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: Container(
                                        height: 32.sp,
                                        width: 32.sp,
                                        child: Icon(
                                          Icons.arrow_back_rounded,
                                          color: Secondary50,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 6.sp),
                                Text(
                                  "Daftar Toko",
                                  style: TextStyle(
                                    fontSize: 15.5.sp,
                                    fontWeight: FontWeight.w600,
                                    color: H333333,
                                  ),
                                ),
                              ],
                            ),

                            ///
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.sp + 85.w),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 28.sp),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 20.w,
                                width: 20.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    colors: [
                                      Primary30,
                                      Primary50,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(2.sp),
                                child: Container(
                                  height: 16.w,
                                  width: 16.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 20.w,
                                width: 20.w,
                                child: Center(
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                      fontSize: 10.w,
                                      fontWeight: FontWeight.w600,
                                      color: Primary50,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Container(
                              height: 2.sp,
                              color: Neutral50,
                            ),
                          ),
                          Container(
                            height: 20.w,
                            width: 20.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Neutral50,
                            ),
                            child: Center(
                              child: Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 10.w,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 2.sp,
                              color: Neutral50,
                            ),
                          ),
                          Container(
                            height: 20.w,
                            width: 20.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Neutral50,
                            ),
                            child: Center(
                              child: Text(
                                "3",
                                style: TextStyle(
                                  fontSize: 10.w,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 2.sp,
                              color: Neutral50,
                            ),
                          ),
                          Container(
                            height: 20.w,
                            width: 20.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Neutral50,
                            ),
                            child: Center(
                              child: Text(
                                "4",
                                style: TextStyle(
                                  fontSize: 10.w,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6.sp),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 22.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Detail",
                            style: TextStyle(
                              fontSize: 10.w,
                              fontWeight: FontWeight.w600,
                              color: H333333,
                            ),
                          ),
                          Text(
                            "Alamat",
                            style: TextStyle(
                              fontSize: 10.w,
                              fontWeight: FontWeight.w600,
                              color: Neutral50,
                            ),
                          ),
                          Text(
                            "Foto KTP",
                            style: TextStyle(
                              fontSize: 10.w,
                              fontWeight: FontWeight.w600,
                              color: Neutral50,
                            ),
                          ),
                          Text(
                            "Riview",
                            style: TextStyle(
                              fontSize: 10.w,
                              fontWeight: FontWeight.w600,
                              color: Neutral50,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.sp),
                    Row(
                      children: [
                        Text(
                          "Foto Profil",
                          style: TextStyle(
                            fontSize: 13.5.w,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.sp),
                    Text(
                      "Format gambar .jpg, .jpeg, .png dengan ukuran maksimal 5MB (Untuk gambar optimal, gunakan ukuran 500 x 500 px).",
                      style: TextStyle(
                        fontSize: 10.w,
                        fontWeight: FontWeight.w400,
                        color: Neutral90,
                      ),
                    ),
                    SizedBox(height: 12.sp),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/Tambahkan-Foto.svg',
                          fit: BoxFit.cover,
                          height: 80.w,
                          width: 80.w,
                        ),
                      ],
                    ),
                    SizedBox(height: 16.sp),
                    Row(
                      children: [
                        Text(
                          "Nama Toko",
                          style: TextStyle(
                            fontSize: 13.5.w,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.sp),
                    Container(
                      decoration: BoxDecoration(
                        color: F0F0F0,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Masukkan nama produk yang ingin kamu jual",
                          hintStyle: TextStyle(
                            fontSize: 11.5.w,
                            fontWeight: FontWeight.w400,
                            color: Neutral70,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.sp,
                            vertical: 11.sp,
                          ),
                        ),
                        focusNode: controller.namaTokoFN,
                        controller: controller.namaTokoC,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.name,
                        autocorrect: false,
                        style: TextStyle(
                          decorationThickness: 0,
                          fontSize: 11.5.sp,
                          fontWeight: FontWeight.w400,
                          color: H333333,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.sp),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 13.5.w,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            //
                          },
                          highlightColor: highlightColor,
                          splashColor: splashColor,
                          borderRadius: BorderRadius.circular(4.r),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.sp, vertical: 4.sp),
                            child: Text(
                              "Gunakan email yang sama",
                              style: TextStyle(
                                fontSize: 10.w,
                                fontWeight: FontWeight.w400,
                                color: Primary50,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.sp),
                    Container(
                      decoration: BoxDecoration(
                        color: F0F0F0,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: TextField(
                        onChanged: (value) {
                          controller.checkEmailValidity();
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Masukkan email tokomu",
                          hintStyle: TextStyle(
                            fontSize: 11.5.w,
                            fontWeight: FontWeight.w400,
                            color: Neutral70,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.sp,
                            vertical: 11.sp,
                          ),
                        ),
                        focusNode: controller.emailTokoFN,
                        controller: controller.emailTokoC,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        style: TextStyle(
                          decorationThickness: 0,
                          fontSize: 11.5.sp,
                          fontWeight: FontWeight.w400,
                          color: H333333,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.sp),
                    Row(
                      children: [
                        Text(
                          "No. Hp",
                          style: TextStyle(
                            fontSize: 13.5.w,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.sp),
                    Container(
                      decoration: BoxDecoration(
                        color: F0F0F0,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Cth: 081234567890",
                          hintStyle: TextStyle(
                            fontSize: 11.5.w,
                            fontWeight: FontWeight.w400,
                            color: Neutral70,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.sp,
                            vertical: 11.sp,
                          ),
                        ),
                        focusNode: controller.noHpTokoFN,
                        controller: controller.noHpTokoC,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        autocorrect: false,
                        style: TextStyle(
                          decorationThickness: 0,
                          fontSize: 11.5.sp,
                          fontWeight: FontWeight.w400,
                          color: H333333,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.sp),
                    Row(
                      children: [
                        Text(
                          "Tipe Toko",
                          style: TextStyle(
                            fontSize: 13.5.w,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.sp),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r),
                        boxShadow: [
                          BoxShadow_01(),
                        ],
                      ),
                      child: Form(
                        key: controller.formKey1,
                        child: DropdownButtonFormField2<String>(
                          isExpanded: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              bottom: 0.sp,
                              left: 1.sp,
                              right: 11.sp,
                            ),
                            border: InputBorder.none,
                            // Add more decoration..
                          ),
                          hint: Text(
                            'Pilih Tipe Toko',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: Neutral90,
                            ),
                          ),
                          items: controller.tipeToko
                              .map(
                                (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                      // decorationThickness: 0,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: H333333,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                          buttonStyleData: ButtonStyleData(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          validator: (value) {
                            if (value == null) {
                              return 'Pilih Tipe Toko';
                            }
                            if (controller.formKey1.currentState!.validate()) {
                              controller.formKey1.currentState!.save();
                            }
                            return null;
                          },
                          onChanged: (value) {
                            controller.tipeTokoC.text = value!;
                            controller.ubahNilai();
                          },
                          onSaved: (value) {
                            controller.tipeTokoC.text = value!;
                          },
                          iconStyleData: IconStyleData(
                            icon: Icon(
                              color: Primary50,
                              //
                              Icons.keyboard_arrow_down_sharp,
                            ),
                            iconSize: 24,
                          ),
                          dropdownStyleData: DropdownStyleData(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.sp),
                    Row(
                      children: [
                        Text(
                          "Kategori Toko",
                          style: TextStyle(
                            fontSize: 13.5.w,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.sp),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r),
                        boxShadow: [
                          BoxShadow_01(),
                        ],
                      ),
                      child: Form(
                        key: controller.formKey2,
                        child: DropdownButtonFormField2<String>(
                          isExpanded: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              bottom: 0.sp,
                              left: 1.sp,
                              right: 11.sp,
                            ),
                            border: InputBorder.none,
                            // Add more decoration..
                          ),
                          hint: Text(
                            'Pilih Kategori Toko',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: Neutral90,
                            ),
                          ),
                          items: controller.kategoriToko
                              .map(
                                (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                      // decorationThickness: 0,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: H333333,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                          buttonStyleData: ButtonStyleData(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          validator: (value) {
                            if (value == null) {
                              return 'Pilih Kategori Toko';
                            }
                            if (controller.formKey2.currentState!.validate()) {
                              controller.formKey2.currentState!.save();
                            }
                            return null;
                          },
                          onChanged: (value) {
                            controller.kategoriTokoC.text = value!;
                            controller.ubahNilai();
                          },
                          onSaved: (value) {
                            controller.kategoriTokoC.text = value!;
                          },
                          iconStyleData: IconStyleData(
                            icon: Icon(
                              color: Primary50,
                              //
                              Icons.keyboard_arrow_down_sharp,
                            ),
                            iconSize: 24,
                          ),
                          dropdownStyleData: DropdownStyleData(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 22.sp,
                        bottom: 16.sp,
                        left: 16.sp,
                        right: 16.sp,
                      ),
                      child: InkWell(
                        onTap: () {
                          //
                               print("Nama: ${controller.namaTokoC.text}");
                          print("Email: ${controller.emailTokoC.text}");
                          print("NoHp: ${controller.noHpTokoC.text}");
                          print("Tipe Toko: ${controller.tipeTokoC.text}");
                          print(
                              "Kategori Toko: ${controller.kategoriTokoC.text}");
                          print("isValid: ${controller.isValid}");
                        },
                        borderRadius: BorderRadius.circular(32.r),
                        child: Ink(
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.r),
                            gradient: LinearGradient(
                              colors: controller.isValid == true &&
                                      (controller.noHpTokoC.text.length == 9 ||
                                          controller.noHpTokoC.text.length ==
                                              10 ||
                                          controller.noHpTokoC.text.length ==
                                              11 ||
                                          controller.noHpTokoC.text.length ==
                                              12 ||
                                          controller.noHpTokoC.text.length ==
                                              13) &&
                                      controller.namaTokoC.text.isNotEmpty &&
                                      controller.tipeTokoC.text.isNotEmpty &&
                                      controller.kategoriTokoC.text.isNotEmpty
                                  ? [
                                      Color(0xFF4D89D4),
                                      Color(0xFF216BC9),
                                    ]
                                  : [
                                      Neutral50,
                                      Neutral50,
                                    ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Selanjutnya",
                                  style: TextStyle(
                                    fontSize: 15.5.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
