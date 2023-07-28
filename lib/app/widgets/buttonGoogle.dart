import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonGoogleAuth extends StatelessWidget {
  final Uri googleLoginUrl = Uri.parse(
      'https://accounts.google.com/v3/signin/identifier?opparams=%253F&dsh=S1594143820%3A1690339619229306&client_id=9497603742-dpi5bn75d652l6sshkjt4886j6vi8l1s.apps.googleusercontent.com&o2v=1&redirect_uri=https%3A%2F%2Fbagaswihant.my.id%2Flogingoogle.php&response_type=code&scope=openid+profile+email&service=lso&flowName=GeneralOAuthFlow&continue=https%3A%2F%2Faccounts.google.com%2Fsignin%2Foauth%2Fconsent%3Fauthuser%3Dunknown%26part%3DAJi8hAOihoN8-xwB5f2GLYp8SR7YQZoqJ75AY224IEdRz6KIrqp7W8vVYsVGA9zzqgOOGxidQmroXzquJsvnJUToJwx59facBNGl-xGSsIQaR0fRXk01WxKxmyPxR1fuwj5MndgzyUP5T6fxViAeLG0eQnENnlhZK3zvpD5pB3sViYd0vqHj-zbc_gwpyT8YY1GzvSNoSgfDvM361-BvlsEYYbxhEP8_Pn7t1H1hEOZaXshnN5QVaGrSxJ8eTk4FjpjWDnHxESRX88JrlcN3VYSCxsXTkzNmagh1kyV8zBukfBW8r8Du8s4tkKCyMPF6WFIErkUuEPIpCJI3cufVhAe40ZGf7Psuv6lffqyocZ-teAiniosh1DYR1A07B7PP8q-ktHq28uaYSgqNRldUfAmaBTrcy_Vq2CfGJoP1J552TqU5xuYaj6C7YWlg7HLmVsa0QswTq2WZx93HrI4PcNskKKdpDJcTJA%26as%3DS1594143820%253A1690339619229306%26client_id%3D9497603742-dpi5bn75d652l6sshkjt4886j6vi8l1s.apps.googleusercontent.com%23&app_domain=https%3A%2F%2Fbagaswihant.my.id&rart=ANgoxcfUyU-haob04dWJ1My551ryrqwuFMMUFdq7X3GRd7ukI3nV_L0D2nweOjyeDDgu0eCOgGC0iZBbVBJb-JWS9Zyr9kTQaw');

  Future<void> launchGoogleLogin() async {
    if (!await launchUrl(
      googleLoginUrl,
      // mode: LaunchMode.inAppWebView,
      // webViewConfiguration: WebViewConfiguration(
      //   enableJavaScript: true,
      //   enableDomStorage: true,
      // ),
    )) {
      throw Exception('Could not launch $googleLoginUrl');
    }
  }

//   void showGoogleLoginDialog(BuildContext context) async {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) async {
//       try {
//         await launchGoogleLogin();

//       } catch (error) {
//         print('Error during Google sign in: $error');

//       }
//       Get.back();
//       Get.toNamed("page");
//     },
//   );
// }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //
        // showGoogleLoginDialog(BuildContext context);
        launchGoogleLogin();
        // Get.dialog(
        //   Dialog(
        //     child: Container(
        //       width: 343.w,
        //       height: 497.w,
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(8.r),
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        // );
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

// /
// /
// /

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import 'package:google_sign_in/google_sign_in.dart';

// GoogleSignInAccount? currentUser;

// const List<String> scopes = <String>[
//   'email',
//   // 'https://www.googleapis.com/auth/contacts.readonly',
// ];

// GoogleSignIn _googleSignIn = GoogleSignIn(
//   // Optional clientId
//   // clientId: 'your-client_id.apps.googleusercontent.com',
//   scopes: scopes,
// );

// Future<void> handleSignIn() async {
//   try {
//     await _googleSignIn.signIn();
//     print(currentUser?.email);
//     print(currentUser?.id);
//     print(currentUser?.photoUrl);
//     print(currentUser?.displayName);
//     print(currentUser?.serverAuthCode);
//   } catch (error) {
//     print(error);
//   }
// }

// class ButtonGoogleAuth extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         handleSignIn();
//       },
//       child: Center(
//         child: Flexible(
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(50.r),
//               border: Border.all(
//                 color: Color(0xFF216BC9), // Warna garis tepi
//                 width: 1, // Lebar garis tepi
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(6),
//               child: Wrap(
//                 // alignment: WrapAlignment.center,
//                 crossAxisAlignment: WrapCrossAlignment.center,
//                 children: [
//                   Container(
//                     width: 30.w,
//                     height: 30.w,
//                     child: SvgPicture.asset(
//                       "assets/icons/iconGoogle.svg",
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   SizedBox(width: 4.w),
//                   Text(
//                     "Google",
//                     style: TextStyle(
//                       fontSize: 16.sp,
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w600,
//                       color: Color(0xFF216BC9),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
