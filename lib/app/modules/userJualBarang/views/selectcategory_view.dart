import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:g_a_s_app_rekadigi/app/constant/colors.dart';
import 'package:g_a_s_app_rekadigi/app/modules/userJualBarang/controllers/user_jual_barang_controller.dart';
import 'package:g_a_s_app_rekadigi/app/utils/navigator_helper.dart';
import 'package:g_a_s_app_rekadigi/app/widgets/formAppbar_widget.dart';
import 'package:g_a_s_app_rekadigi/app/widgets/formBtn_widget.dart';
import 'package:get/get.dart';

class SelectCategoryView extends StatelessWidget {
  const SelectCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserJualBarangController>(
      builder: (_) => Scaffold(
          backgroundColor: BackgroundColor,
          body: Stack(
            children: [
              FormAppBarWidget(
                onBack: () async {
                  SystemChrome.setSystemUIOverlayStyle(
                      const SystemUiOverlayStyle(
                          statusBarColor: Colors.transparent,
                          statusBarIconBrightness: Brightness.dark));
                  Get.back();
                },
                showRightBtn: true,
                rightBtnLabel: 'Draft',
                rightBtnClick: () {},
              ),
              Container(
                decoration: BoxDecoration(),
                margin:
                    EdgeInsets.only(top: 58.w + ScreenUtil().statusBarHeight),
                child: DynamicHeightGridView(
                  physics: BouncingScrollPhysics(),
                  mainAxisSpacing: 8.w,
                  crossAxisSpacing: 8.w,
                  itemCount: _.productCategory.length,
                  crossAxisCount: 2,
                  builder: (context, index) => GestureDetector(
                    onTap: () {
                      _.setSelectedProductCategory(_.productCategory[index]);
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      margin: EdgeInsets.only(
                          right: index % 2 == 0 ? 0 : 16.w,
                          left: index % 2 == 0 ? 16.w : 0,
                          bottom:
                              index == _.productCategory.length - 1 ? 16.w : 0),
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: _.selectedProductCategory ==
                                      _.productCategory[index]
                                  ? Primary50
                                  : BackgroundColor),
                          color: _.selectedProductCategory ==
                                  _.productCategory[index]
                              ? Primary05
                              : BackgroundColor,
                          boxShadow: [
                            BoxShadow(
                                color: TextBlack.withOpacity(0.04),
                                offset: Offset(0.w, 5.w),
                                blurRadius: 10,
                                spreadRadius: 4)
                          ],
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: F0F0F0,
                                borderRadius: BorderRadius.circular(4.r)),
                            padding: EdgeInsets.all(8.w),
                            child: SvgPicture.asset(
                              _.productCategory[index].icon,
                              height: 20.w,
                              width: 20.w,
                            ),
                          ),
                          SizedBox(
                            height: 8.w,
                          ),
                          Text(
                            _.productCategory[index].label,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14.sp),
                          ),
                          SizedBox(
                            height: 4.w,
                          ),
                          Text(
                            _.productCategory[index].desc,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10.sp,
                                color: Neutral90),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: FormButtonWidget(
              isActive: _.selectedProductCategory != null,
              onTap: () {
                print('data');
                NavigatorHelper.userJualBarangNav.currentState!
                    .pushNamed(userJualBarangRoutes.addProductDetail);
              })),
    );
  }
}
