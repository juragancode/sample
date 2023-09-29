import 'package:flutter/material.dart';
import 'package:g_a_s_app_rekadigi/app/constant/colors.dart';
import 'package:get/get.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
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
      // textColor: H333333,
      locale: DateTimePickerLocale.id,
    );

    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      // Update text field dengan tanggal yang dipilih
      tglLahirProfilC.text = DateFormat("dd/MM/yyyy").format(selectedDate!);
    }
  }

  final List<String> jenisKelamin = [
    'Laki-laki',
    'Perempuan',
  ];

  String? jenisKelaminDipilih;

  final formKey = GlobalKey<FormState>();
}
