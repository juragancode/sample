import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../constant/colors.dart';
import '../../../constant/url_GAS_v021.dart';
import '../../../modules/lupaPassword/controllers/lupa_password_controller.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/Dialog/Dialog_KesalahanServer.dart';
import '../../../widgets/Dialog/Dialog_Koneksi_Internet_Terganggu.dart';

final LupaPasswordController emailC = Get.find();

class VerifikasiLupaPasswordController extends GetxController {
  // TextEditingController
  TextEditingController verifikasiLupaPassC = TextEditingController();
  FocusNode verifikasiLupaPassFN = FocusNode();

  //
  RxBool kodeTerisi = false.obs;
  RxBool kirimUlangKodeVerifikasi = false.obs;

  void perubahanKodeTerisi(String value) {
    if (value.length == 4) {
      kodeTerisi.value = true;
    } else {
      kodeTerisi.value = false;
    }
  }

  // Hitung Mundur
  final StreamController<int> timerController = StreamController<int>();
  final RxInt empatPuluhDetik = 41.obs;
  late Timer _timer;

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  @override
  void onClose() {
    super.onClose();
    timerController.close();
    _timer.cancel();
  }

  void startTimer() {
    empatPuluhDetik.value = 41;
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        if (empatPuluhDetik.value > 0) {
          empatPuluhDetik.value--;
          timerController.add(empatPuluhDetik.value);
        } else {
          timer.cancel();
        }
      },
    );
    kirimUlangKodeVerifikasi.value = true;
  }

  void restartTimer() {
    kirimUlangOTP();
    verifikasiLupaPassC.clear();
    empatPuluhDetik.value = 41;
    kirimUlangKodeVerifikasi.value = false;
    startTimer();
  }

  //
  RxBool loadingVerifikasiLupaPassOTP = false.obs;

  void verifikasiLupaPass() async {
    try {
      loadingVerifikasiLupaPassOTP.value = true;
      var response = await http.post(
        Uri.parse(resetPasswordConfirmOtp),
        body: {
          "otp": verifikasiLupaPassC.text,
          "key": emailC.emailLupaPassC.text.toLowerCase(),
        },
      );
      loadingVerifikasiLupaPassOTP.value = false;
      Map<String, dynamic> logdata =
          jsonDecode(response.body) as Map<String, dynamic>;

      print(response.body);
      print(verifikasiLupaPassC.text);
      print(emailC.emailLupaPassC.text);
      print(response.statusCode);

      if (
          // logdata['message'] == "OTP Terverifikasi"
          // &&
          response.statusCode >= 200 && response.statusCode <= 210) {
        Get.offNamed(Routes.ATUR_ULANG_PASSWORD);
      } else if (logdata['message'] == "Otp Tidak Sama"
          // || response.statusCode == 401
          ) {
        Get.dialog(
          Dialog_OTP_Salah_(),
        );
      } else if (logdata["message"] == "Waktu Habis"
          // || response.statusCode == 408
          ) {
        Get.dialog(
          Dialog_Waktu_OTP_Habis_(),
        );
      } else {
        Get.dialog(
          Dialog_KesalahanServer(
            onReload: verifikasiLupaPass,
          ),
        );
      }
    } catch (e) {
      print(e);
      loadingVerifikasiLupaPassOTP.value = false;
      Get.dialog(
        Dialog_Koneksi_Internet_Terganggu(
          onReload: verifikasiLupaPass,
        ),
      );
    }
  }

  void kirimUlangOTP() async {
    try {
      var response = await http.post(
        Uri.parse(resetPasswordSendOtp),
        body: {
          "email": emailC.emailLupaPassC.text.toLowerCase(),
        },
      );
      verifikasiLupaPassFN.requestFocus();
      Map<String, dynamic> logdata =
          jsonDecode(response.body) as Map<String, dynamic>;

      print(response.body);
      print(emailC.emailLupaPassC.text);
      print(logdata['data']['codeOTP']);

      if (
          // logdata['message'] == OTP Terverifikasi
          // &&
          response.statusCode >= 200 && response.statusCode <= 210) {
        // kosong
      } else {
        Get.dialog(
          Dialog_KesalahanServer(
            onReload: kirimUlangOTP,
          ),
        );
      }
    } catch (e) {
      print(e);
      Get.dialog(
        Dialog_Koneksi_Internet_Terganggu(
          onReload: kirimUlangOTP,
        ),
      );
    }
  }
}

class Dialog_OTP_Salah_ extends GetView<VerifikasiLupaPasswordController> {
  const Dialog_OTP_Salah_({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0.w),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Kode yang kamu masukkan salah!",
              style: TextStyle(
                fontSize: 13.5.w,
                fontWeight: FontWeight.w600,
                color: H333333,
              ),
            ),
            SizedBox(height: 8.sp),
            Text(
              "Coba teliti kembali atau kirim ulang kode verifikasi",
              style: TextStyle(
                fontSize: 11.5.w,
                fontWeight: FontWeight.w400,
                color: Neutral90,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.sp),
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
                        Get.back();
                        controller.verifikasiLupaPassC.clear();
                        controller.verifikasiLupaPassFN.requestFocus();
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
                          padding: EdgeInsets.symmetric(vertical: 9.5.w),
                          child: Center(
                            child: Text(
                              "Kembali",
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
                        print("Muat Ulang OTP");
                        Get.back();

                        controller.verifikasiLupaPass();
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
                          padding: EdgeInsets.symmetric(vertical: 9.5.w),
                          child: Center(
                            child: Text(
                              "Kirim Ulang",
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
          ],
        ),
      ),
    );
  }
}

class Dialog_Waktu_OTP_Habis_
    extends GetView<VerifikasiLupaPasswordController> {
  const Dialog_Waktu_OTP_Habis_({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0.w),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Maaf, waktu OTP sudah habis.",
              style: TextStyle(
                fontSize: 13.5.w,
                fontWeight: FontWeight.w600,
                color: H333333,
              ),
            ),
            SizedBox(height: 8.sp),
            Text(
              "Silakan kirim ulang OTP untuk mendapatkan OTP baru",
              style: TextStyle(
                fontSize: 11.5.w,
                fontWeight: FontWeight.w400,
                color: Neutral90,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.sp),
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
                        Get.back();
                        controller.verifikasiLupaPassC.clear();
                        controller.verifikasiLupaPassFN.requestFocus();
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
                          padding: EdgeInsets.symmetric(vertical: 9.5.w),
                          child: Center(
                            child: Text(
                              "Kembali",
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
                        print("Kirim Ulang OTP");
                        Get.back();
                        controller.verifikasiLupaPassFN.requestFocus();
                        controller.verifikasiLupaPassC.clear();
                        controller.kirimUlangOTP();
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
                          padding: EdgeInsets.symmetric(vertical: 9.5.w),
                          child: Center(
                            child: Text(
                              "Kirim Ulang OTP",
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
          ],
        ),
      ),
    );
  }
}
