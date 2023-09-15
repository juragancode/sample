import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import '../modules/home/controllers/home_controller.dart';

// final FirebaseAuth _auth = FirebaseAuth.instance;

// Future<User?> handleSignIn() async {
//   try {
//     final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
//     final GoogleSignInAuthentication googleAuth =
//         await googleUser!.authentication;
//     final AuthCredential credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );
//     final UserCredential authResult =
//         await _auth.signInWithCredential(credential);
//     final User? user = authResult.user;
//     return user;
//   } catch (error) {
//     print(error);
//     return null;
//   }
// }

class ButtonGoogleAuth extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeController());
    return InkWell(
      onTap: () {
        // User? user = await handleSignIn();
        // if (user != null) {
        //   // Login berhasil, lanjutkan ke halaman berikutnya atau lakukan sesuatu yang diperlukan.
        //   print('Login berhasil: ${user.displayName}');
        // } else {
        //   // Login gagal atau dibatalkan.
        //   print('Login gagal atau dibatalkan');
        // }
        controller.login();
      },
      child: Center(
        child: Flexible(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              border: Border.all(
                color: Color(0xFF216BC9), // Warna garis tepi
                width: 1, // Lebar garis tepi
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Wrap(
                // alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                    width: 30.w,
                    height: 30.w,
                    child: SvgPicture.asset(
                      "assets/icons/iconGoogle.svg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 4.w),
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
    );
  }
}
