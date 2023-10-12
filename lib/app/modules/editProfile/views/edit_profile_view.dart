import 'package:cached_network_image/cached_network_image.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../../constant/colors.dart';
import '../../../widgets/Decoration/Shimmer.dart';
import '../../productDetail/views/product_detail_view.dart';
import '../controllers/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          controller.namaProfilFN.unfocus();
          controller.emailProfilFN.unfocus();
          controller.noHpProfilFN.unfocus();
        },
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                // width: Get.width,
                // height: 178.w,
                child: Stack(
                  children: [
                    Shimmer_00(),
                    SvgPicture.asset(
                      'assets/icons/Homepage-Header-profile-2.svg',
                      width: Get.width,
                      // height: 187.w,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Column(
                  children: [
                    SizedBox(height: 46.w),
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
                          "Edit Profil",
                          style: TextStyle(
                            fontSize: 15.5.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.sp),
                    ClipOval(
                      child: InkWell(
                        onTap: () {
                          print("foto profil di-tap");
                        },
                        // borderRadius: BorderRadius.circular(4.r),
                        child: Ink(
                          height: 100.w,
                          width: 100.w,
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://pbs.twimg.com/media/FFx_c1yXsAkEDLa.jpg",
                            fit: BoxFit.cover,
                            placeholder: (context, url) => Shimmer.fromColors(
                              baseColor: Colors.grey.shade200,
                              highlightColor: Colors.white,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4.r),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //
                    // InkWell(
                    //   onTap: () {
                    //     print("foto profil di-tap");
                    //   },
                    //   borderRadius: BorderRadius.circular(100.r),
                    //   child: Ink(
                    //     height: 100.w,
                    //     width: 100.w,
                    //     decoration: BoxDecoration(
                    //       shape: BoxShape.circle,
                    //       image: controller.imageProfil != null
                    //           ? DecorationImage(
                    //               image: FileImage(
                    //                 controller.imageProfil!,
                    //               ),
                    //               fit: BoxFit.cover,
                    //             )
                    //           : null,
                    //     ),
                    //   ),
                    // ),
                    Obx(
                      () {
                        return InkWell(
                          onTap: () {
                            print("foto profil di-tap");
                          },
                          borderRadius: BorderRadius.circular(100.r),
                          child: Ink(
                            height: 100.w,
                            width: 100.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: controller.imageProfil?.value != null
                                  ? DecorationImage(
                                      image: FileImage(
                                        controller.imageProfil!.value,
                                      ),
                                      fit: BoxFit.cover,
                                    )
                                  : null,
                            ),
                          ),
                        );
                      },
                    ),
                    // InkWell(
                    //   onTap: () {
                    //     print("foto profil di-tap");
                    //   },
                    //   child: Container(
                    //     width: 100.w,
                    //     height: 100.w,
                    //     child: Stack(
                    //       children: [
                    //         // Shimmer.fromColors(
                    //         //   baseColor: Colors.grey.shade200,
                    //         //   highlightColor: Colors.white,
                    //         //   enabled: true,
                    //         //   child: Container(
                    //         //     color: Colors.grey.shade100,
                    //         //   ),
                    //         // ),
                    //         Ink.image(
                    //           image: CachedNetworkImageProvider(
                    //             "https://pbs.twimg.com/media/FFx_c1yXsAkEDLa.jpg",
                    //           ),
                    //           fit: BoxFit.cover,
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    SizedBox(height: 8.sp),
                    InkWell(
                      onTap: () {
                        //
                        controller.imageProfilCamera();
                      },
                      splashColor: splashColor,
                      highlightColor: highlightColor,
                      borderRadius: BorderRadius.circular(8.sp),
                      child: Padding(
                        padding: EdgeInsets.all(11.5.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.mode_edit_rounded,
                              size: 18.w, // ukuran icon default
                              color: Primary50,
                            ),
                            SizedBox(width: 8.sp),
                            Text(
                              "Ubah Foto Profil",
                              style: TextStyle(
                                fontSize: 11.5.w,
                                fontWeight: FontWeight.w600,
                                color: Primary50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16.sp),
                    CostumDivider(),
                    SizedBox(height: 16.sp),
                    Row(
                      children: [
                        Text(
                          "Detail Info",
                          style: TextStyle(
                            fontSize: 13.5.w,
                            fontWeight: FontWeight.w600,
                            color: H333333,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.sp),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nama",
                          style: TextStyle(
                            fontSize: 11.5.w,
                            fontWeight: FontWeight.w400,
                            color: Neutral90,
                          ),
                        ),
                        Container(
                          width: 227.w,
                          height: 33.sp,
                          decoration: BoxDecoration(
                            color: F0F0F0,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: TextField(
                            onChanged: (value) {
                              controller.namaProfilC;
                              controller.ubahNilai();
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.sp, vertical: 14.sp),
                              hintText: null,
                              hintStyle: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: Neutral90,
                              ),
                            ),
                            focusNode: controller.namaProfilFN,
                            controller: controller.namaProfilC,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.name,
                            autocorrect: false,
                            style: TextStyle(
                              decorationThickness: 0,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: H333333,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.sp),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 11.5.w,
                            fontWeight: FontWeight.w400,
                            color: Neutral90,
                          ),
                        ),
                        Container(
                          width: 227.w,
                          height: 33.sp,
                          decoration: BoxDecoration(
                            color: F0F0F0,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: TextField(
                            onChanged: (value) {
                              controller.emailProfilC;
                              controller.ubahNilai();
                              controller.checkEmailValidity();
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.sp, vertical: 14.sp),
                              hintText: null,
                              hintStyle: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: Neutral90,
                              ),
                            ),
                            focusNode: controller.emailProfilFN,
                            controller: controller.emailProfilC,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            style: TextStyle(
                              decorationThickness: 0,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: H333333,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.sp),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nomor HP",
                          style: TextStyle(
                            fontSize: 11.5.w,
                            fontWeight: FontWeight.w400,
                            color: Neutral90,
                          ),
                        ),
                        Container(
                          width: 227.w,
                          height: 33.sp,
                          decoration: BoxDecoration(
                            color: F0F0F0,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: TextField(
                            onChanged: (value) {
                              controller.noHpProfilC;
                              controller.ubahNilai();
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.sp, vertical: 10.5.sp),
                              hintText: null,
                              prefix: Text(
                                "+62 ",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Neutral70,
                                ),
                              ),
                            ),
                            focusNode: controller.noHpProfilFN,
                            controller: controller.noHpProfilC,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            autocorrect: false,
                            style: TextStyle(
                              decorationThickness: 0,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: H333333,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.sp),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Text(
                    //       "Jenis Kelamin",
                    //       style: TextStyle(
                    //         fontSize: 11.5.w,
                    //         fontWeight: FontWeight.w400,
                    //         color: Neutral90,
                    //       ),
                    //     ),
                    //     Container(
                    //       width: 227.w,
                    //       height: 33.sp,
                    //       decoration: BoxDecoration(
                    //         color: F0F0F0,
                    //         borderRadius: BorderRadius.circular(8.r),
                    //       ),
                    //       child: TextField(
                    //         onTap: () {},
                    //         decoration: InputDecoration(
                    //           border: InputBorder.none,
                    //           contentPadding: EdgeInsets.symmetric(
                    //               horizontal: 16.sp, vertical: 10.5.sp),
                    //           hintText: "Pilih Jenis Kelamin",
                    //           hintStyle: TextStyle(
                    //             fontSize: 12.sp,
                    //             fontFamily: 'Poppins',
                    //             fontWeight: FontWeight.w400,
                    //             color: Neutral90,
                    //           ),
                    //           suffixIcon: Icon(
                    //             color: Primary50,
                    //             //
                    //             Icons.arrow_drop_down_sharp,
                    //             //
                    //             // Icons.keyboard_arrow_down_rounded,
                    //             // size: 20.sp,
                    //           ),
                    //         ),
                    //         focusNode: controller.genderProfilFN,
                    //         controller: controller.genderProfilC,
                    //         textInputAction: TextInputAction.next,
                    //         keyboardType: TextInputType.none,
                    //         autocorrect: false,
                    //         style: TextStyle(
                    //           decorationThickness: 0,
                    //           fontSize: 12.sp,
                    //           fontWeight: FontWeight.w400,
                    //           color: H333333,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Jenis Kelamin",
                          style: TextStyle(
                            fontSize: 11.5.w,
                            fontWeight: FontWeight.w400,
                            color: Neutral90,
                          ),
                        ),
                        Container(
                          width: 227.w,
                          height: 33.sp,
                          decoration: BoxDecoration(
                            color: F0F0F0,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Form(
                            key: controller.formKey,
                            child: DropdownButtonFormField2<String>(
                              isExpanded: true,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  bottom: 12.sp,
                                  left: 1.sp,
                                  right: 11.sp,
                                ),
                                border: InputBorder.none,
                                // Add more decoration..
                              ),
                              hint: Text(
                                'Pilih Jenis Kelamin',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: Neutral90,
                                ),
                              ),

                              items: controller.jenisKelamin
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
                                  return 'Pilih Jenis Kelamin';
                                }
                                if (controller.formKey.currentState!
                                    .validate()) {
                                  controller.formKey.currentState!.save();
                                }
                                return null;
                              },
                              onChanged: (value) {
                                controller.genderProfilC.text = value!;
                                controller.ubahNilai();
                              },
                              onSaved: (value) {
                                controller.genderProfilC.text = value!;
                              },
                              // buttonStyleData: ButtonStyleData(
                              //   padding: EdgeInsets.only(right: 8),
                              // ),
                              iconStyleData: IconStyleData(
                                icon: Icon(
                                  color: Primary50,
                                  //
                                  Icons.arrow_drop_down_sharp,
                                ),
                                iconSize: 24,
                              ),
                              dropdownStyleData: DropdownStyleData(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  // color: F0F0F0,
                                ),
                              ),
                              // menuItemStyleData: MenuItemStyleData(
                              //   padding: EdgeInsets.symmetric(horizontal: 16),
                              // ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Obx(
                      () => Visibility(
                        visible: controller.jenisKelam.isEmpty,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Column(
                            children: [
                              SizedBox(height: 8.sp),
                              Container(
                                width: 227.w,
                                // height: 33.sp,
                                // color: Colors.amber,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.info,
                                      color: Error50,
                                      size: 16.sp,
                                    ),
                                    SizedBox(width: 5.sp),
                                    Text(
                                      "Silakan pilih jenis kelamin.",
                                      style: TextStyle(
                                        fontSize: 10.w,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        color: Error50,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24.sp),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tanggal Lahir",
                          style: TextStyle(
                            fontSize: 11.5.w,
                            fontWeight: FontWeight.w400,
                            color: Neutral90,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            //
                            controller.selectDate(context);
                            controller.ubahNilai();
                            controller.namaProfilFN.unfocus();
                            controller.emailProfilFN.unfocus();
                            controller.noHpProfilFN.unfocus();
                          },
                          borderRadius: BorderRadius.circular(8.r),
                          child: Container(
                            width: 227.w,
                            height: 33.sp,
                            decoration: BoxDecoration(
                              color: F0F0F0,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Stack(
                              children: [
                                TextField(
                                  onTap: () {
                                    controller.selectDate(context);
                                    controller.ubahNilai();
                                    controller.namaProfilFN.unfocus();
                                    controller.emailProfilFN.unfocus();
                                    controller.noHpProfilFN.unfocus();
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16.sp, vertical: 10.5.sp),
                                    hintText: "DD/MM/YYYY",
                                    hintStyle: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: Neutral90,
                                    ),
                                  ),
                                  onChanged: (value) {
                                    controller.tglLahirProfilC;
                                    // controller.tglLahirProfilC ==
                                    //     controller.tglLahir;
                                    controller.ubahNilai();
                                  },
                                  focusNode: controller.tglLahirProfilFN,
                                  controller: controller.tglLahirProfilC,
                                  textInputAction: TextInputAction.done,
                                  keyboardType: TextInputType.none,
                                  enabled: false,
                                  autocorrect: false,
                                  style: TextStyle(
                                    decorationThickness: 0,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: H333333,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 16.sp),
                                    child: Container(
                                      // color: Colors.amber,
                                      child: SvgPicture.asset(
                                        "assets/icons/Personal/calendar.svg",
                                        height: 18.w,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Obx(
                      () => Visibility(
                        visible: controller.tglLahir.isEmpty,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Column(
                            children: [
                              SizedBox(height: 8.sp),
                              Container(
                                width: 227.w,
                                // height: 33.sp,
                                // color: Colors.amber,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.info,
                                      color: Error50,
                                      size: 16.sp,
                                    ),
                                    SizedBox(width: 5.sp),
                                    Text(
                                      "Silakan isi tanggal lahirmu.",
                                      style: TextStyle(
                                        fontSize: 10.w,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        color: Error50,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24.sp),

                    Obx(
                      () => Visibility(
                        visible: controller.nama.value.isNotEmpty &&
                            controller.isValid &&
                            controller.email.value.isNotEmpty &&
                            controller.noHp.value.isNotEmpty &&
                            (controller.noHp.value.length == 9 ||
                                controller.noHp.value.length == 10 ||
                                controller.noHp.value.length == 11 ||
                                controller.noHp.value.length == 12 ||
                                controller.noHp.value.length == 13) &&
                            controller.jenisKelam.value.isNotEmpty &&
                            controller.tglLahir.value.isNotEmpty,
                        child: Column(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(32.r),
                                      onTap: () {
                                        //
                                        print("Kembali");
                                      },
                                      child: Ink(
                                        decoration: BoxDecoration(
                                          color: BackgroundColor,
                                          borderRadius:
                                              BorderRadius.circular(32.r),
                                          border: Border.all(
                                            width: 1,
                                            color: Primary30,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 9.5.w),
                                          child: Center(
                                            child: Text(
                                              "Batal",
                                              style: TextStyle(
                                                fontSize: 11.5.w,
                                                fontWeight: FontWeight.w600,
                                                color: Primary50,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                Expanded(
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(32.r),
                                      onTap: () {
                                        controller.namaProfilFN.unfocus();
                                        controller.emailProfilFN.unfocus();
                                        controller.noHpProfilFN.unfocus();
                                        //
                                        print("Simpan");
                                        print(
                                            "Nilai Email Valid: ${controller.isValid}");
                                        print(
                                            "Nama: ${controller.namaProfilC.text}");
                                        print(
                                            "Email: ${controller.emailProfilC.text}");
                                        print(
                                            "No Hp: +62${controller.noHpProfilC.text}");

                                        print(
                                            "Jenis Kelamin: ${controller.genderProfilC.text}");
                                        print(
                                            "Tanggal Lahir: ${controller.tglLahirProfilC.text}");
                                        print(
                                            "Tanggal Lahir: ${controller.imageProfil}");
                                        print(
                                            "-------------------------------------------------------");

                                        print("Nama: ${controller.nama}");
                                        print("Email: ${controller.email}");
                                        print("No Hp: +62${controller.noHp}");

                                        print(
                                            "Jenis Kelamin: ${controller.jenisKelam}");
                                        print(
                                            "Tanggal Lahir: ${controller.tglLahir}");
                                        print(
                                            "Tanggal Lahir: ${controller.imageProfil}");
                                      },
                                      child: Ink(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xFF4D89D4),
                                              Color(0xFF216BC9),
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(32.r),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 9.5.w),
                                          child: Center(
                                            child: Text(
                                              "Simpan",
                                              style: TextStyle(
                                                fontSize: 11.5.w,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 24.sp),
                          ],
                        ),
                      ),
                    ),

                    CostumDivider(),
                    SizedBox(height: 8.sp),

                    InkWell(
                      onTap: () {
                        //
                        controller.namaProfilFN.unfocus();
                        controller.emailProfilFN.unfocus();
                        controller.noHpProfilFN.unfocus();
                      },
                      splashColor: splashColor,
                      highlightColor: highlightColor,
                      borderRadius: BorderRadius.circular(8.sp),
                      child: Padding(
                        padding: EdgeInsets.all(11.5.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/Personal/trash.svg",
                              height: 18.w,
                            ),
                            SizedBox(width: 10.sp),
                            Text(
                              "Tutup Akun",
                              style: TextStyle(
                                fontSize: 11.5.w,
                                fontWeight: FontWeight.w600,
                                color: Primary50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 95.h),
                    Text(
                      "GAS Apps v 0.2.1",
                      style: TextStyle(
                        color: Neutral70,
                        fontWeight: FontWeight.w400,
                        fontSize: 11.5,
                      ),
                    ),
                    SizedBox(height: 16.sp),
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
