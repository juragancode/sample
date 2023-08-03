import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../model/account_model.dart';
import '../modules/home/controllers/home_controller.dart';
import 'BoxShadow.dart';
import 'Shimmer.dart';
import 'gantiAkun_showModalButtomSheet.dart';

class cardGantiAkun extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        AccountList accountList = AccountList();
        Account selectedAccount =
            accountList.accounts[controller.accountIndex.value];

        return Container(
          margin: EdgeInsets.symmetric(horizontal: 16.sp),
          width: 343.w,
          height: 60.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Color(0xFFFFFFFF),
            boxShadow: [
              BoxShadow_01(),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(8.r),
              onTap: () {
                gantiAkun_showModalButtomSheet(context);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: Container(
                            height: 40.w,
                            width: 40.w,
                            child: Stack(
                              children: [
                                Shimmer_01(),
                                ClipOval(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/icons/${selectedAccount.image}',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              selectedAccount.name,
                              style: TextStyle(
                                fontSize: 13.3.w,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF333333),
                              ),
                            ),
                            SizedBox(height: 2.sp),
                            Text(
                              selectedAccount.typeAccount,
                              style: TextStyle(
                                fontSize: 11.5.w,
                                fontWeight: FontWeight.w400,
                                color: Neutral90,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 24.w,
                      color: Primary50,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
