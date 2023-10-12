import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_a_s_app_rekadigi/app/constant/colors.dart';
import 'package:g_a_s_app_rekadigi/app/modules/userJualBarang/controllers/user_jual_barang_controller.dart';
import 'package:g_a_s_app_rekadigi/app/modules/userJualBarang/widget/progressDetail_widget.dart';
import 'package:g_a_s_app_rekadigi/app/utils/navigator_helper.dart';
import 'package:g_a_s_app_rekadigi/app/widgets/formAppbar_widget.dart';
import 'package:g_a_s_app_rekadigi/app/widgets/formBtn_widget.dart';
import 'package:get/get.dart';

class AddProductDetail extends StatelessWidget {
  const AddProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserJualBarangController>(
      builder: (_) => Scaffold(
          backgroundColor: BackgroundColor,
          body: Stack(
            children: [
              FormAppBarWidget(
                onBack: () async {
                  NavigatorHelper.userJualBarangNav.currentState!.pop();
                },
              ),
              Container(
                decoration: BoxDecoration(),
                margin: EdgeInsets.fromLTRB(
                  16.w,
                  58.w + ScreenUtil().statusBarHeight + 16.w,
                  16.w,
                  16.w,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 80.w),
                      child: ProgressDetailWidget(
                        data: _.processAdd,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: FormButtonWidget(isActive: true, onTap: () {})),
    );
  }
}
