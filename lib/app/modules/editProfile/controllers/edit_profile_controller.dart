import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class EditProfileController extends GetxController {
  TextEditingController namaProfilC =
      TextEditingController(text: "Emily Olivia Laura Blunt");
  TextEditingController emailProfilC =
      TextEditingController(text: "manager@emelyblunt.com");
  TextEditingController noHpProfilC =
      TextEditingController(text: "81234567899");
  TextEditingController genderProfilC = TextEditingController();
  TextEditingController tglLahirProfilC = TextEditingController();

  // FocusNode
  FocusNode namaProfilFN = FocusNode();
  FocusNode emailProfilFN = FocusNode();
  FocusNode noHpProfilFN = FocusNode();
  FocusNode genderProfilFN = FocusNode();
  FocusNode tglLahirProfilFN = FocusNode();

  DateTime? selectedDate;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await DatePicker.showSimpleDatePicker(
      context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
      dateFormat: "dd-MM-yyyy",
      titleText: "Pilih Tanggal",
      cancelText: "Batal",
      confirmText: "Simpan",
      locale: DateTimePickerLocale.id,
    );

    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      // Update text field dengan tanggal yang dipilih
      tglLahirProfilC.text = DateFormat("dd/MM/yyyy").format(selectedDate!);
      // tglLahirProfilC.value = tglLahirProfilC.value;
      tglLahir.value = tglLahirProfilC.text;
    }
  }

  final List<String> jenisKelamin = [
    'Laki-laki',
    'Perempuan',
  ];

  String? jenisKelaminDipilih;

  RxString jenisKelam = "".obs;
  RxString noHp = "".obs;
  RxString email = "".obs;
  RxString nama = "".obs;
  RxString tglLahir = "".obs;

  final formKey = GlobalKey<FormState>();

  void ubahNilai() {
    nama.value = namaProfilC.text;
    email.value = emailProfilC.text;
    noHp.value = noHpProfilC.text;
    jenisKelam.value = genderProfilC.text;
    tglLahir.value = tglLahirProfilC.text;
  }

  bool get isValid {
    return RegExp(
            r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$')
        .hasMatch(email.value);
  }

  void checkEmailValidity() {
    email.value = emailProfilC.text;
  }

  // File? imageProfil;

  Rx<File>? imageProfil;
  Rx<File>? gambarProfile;

  Future imageProfilGallery() async {
    final ImagePicker picker = ImagePicker();
    // Pick an image.
    final XFile? imagePick =
        await picker.pickImage(source: ImageSource.gallery);

    if (imagePick != null) {
      // imageProfil = File(imagePick.path);
      imageProfil = Rx<File>(File(imagePick.path));
    } else {
      print('No image selected.');
    }
  }

  Future imageProfilCamera() async {
    final ImagePicker picker = ImagePicker();
    // Pick an image.
    final XFile? imagePick = await picker.pickImage(source: ImageSource.camera);

    if (imagePick != null) {
      // imageProfil = File(imagePick.path);
      imageProfil = Rx<File>(File(imagePick.path));
      if (imageProfil != null) {}
    } else {
      print('No image selected.');
    }
  }

  //
}
