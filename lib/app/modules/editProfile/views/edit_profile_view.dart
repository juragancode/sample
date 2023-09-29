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
      body: SingleChildScrollView(
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
                              if (controller.formKey.currentState!.validate()) {
                                controller.formKey.currentState!.save();
                              }
                              return null;
                            },
                            onChanged: (value) {
                              controller.genderProfilC.text = value!;
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
                  SizedBox(height: 24.sp),

                  Visibility(
                    visible: controller.namaProfilC.text.isNotEmpty &&
                        controller.emailProfilC.text.isNotEmpty &&
                        controller.noHpProfilC.text.isNotEmpty &&
                        controller.genderProfilC.text.isNotEmpty &&
                        controller.tglLahirProfilC.text.isNotEmpty,
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
                                      borderRadius: BorderRadius.circular(32.r),
                                      border: Border.all(
                                        width: 1,
                                        color: Primary30,
                                      ),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 9.5.w),
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
                                    //
                                    print("Simpan");
                                    print(controller.namaProfilC.text);
                                    print(controller.emailProfilC.text);
                                    print("+62${controller.noHpProfilC.text}");
                                    print("0${controller.noHpProfilC.text}");
                                    print(controller.genderProfilC.text);
                                    print(controller.tglLahirProfilC.text);
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
                                      borderRadius: BorderRadius.circular(32.r),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 9.5.w),
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

                  CostumDivider(),
                  SizedBox(height: 8.sp),

                  InkWell(
                    onTap: () {
                      //
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
                  SizedBox(height: 148.sp),
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
    );
  }
}
