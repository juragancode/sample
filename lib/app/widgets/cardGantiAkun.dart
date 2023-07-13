import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import 'gantiAkun_showModalButtomSheet.dart';
import '../model/account_model.dart';
import '../modules/home/controllers/home_controller.dart';

class cardGantiAkun extends GetView<HomeController> {
  const cardGantiAkun({
    Key? key,
  }) : super(key: key);

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
          height: 60.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Color(0xFFFFFFFF),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(8.r),
              onTap: () {
                gantiAkun_showModalButtomSheet(context);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40.sp,
                          width: 40.sp,
                          child: Image.asset(
                            'assets/icons/${selectedAccount.image}',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 8.sp),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              selectedAccount.name,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF333333),
                              ),
                            ),
                            SizedBox(height: 2.sp),
                            Text(
                              selectedAccount.typeAccount,
                              style: TextStyle(
                                fontSize: 12.sp,
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
                      size: 24.sp,
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
