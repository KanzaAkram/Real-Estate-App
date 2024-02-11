import '../horizontal_screen/widgets/horizontal_item_widget.dart';
import 'bloc/horizontal_bloc.dart';
import 'models/horizontal_item_model.dart';
import 'models/horizontal_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';
import 'package:kanza_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:kanza_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:kanza_s_application1/widgets/app_bar/custom_app_bar.dart';

class HorizontalScreen extends StatelessWidget {
  const HorizontalScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HorizontalBloc>(
      create: (context) => HorizontalBloc(HorizontalState(
        horizontalModelObj: HorizontalModel(),
      ))
        ..add(HorizontalInitialEvent()),
      child: HorizontalScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 17.v,
          ),
          child: Column(
            children: [
              _buildItemHeader(context),
              SizedBox(height: 23.v),
              _buildHorizontal(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_my_favorite".tr,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgThumbsUp,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 3.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildItemHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 7.v,
            ),
            child: Text(
              "lbl_0".tr,
              style: CustomTextStyles.titleMediumRedA200,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 9.v,
              bottom: 8.v,
            ),
            child: Text(
              "lbl_estates".tr,
              style: CustomTextStyles.titleMediumMedium,
            ),
          ),
          Spacer(),
          Container(
            width: 93.h,
            padding: EdgeInsets.symmetric(vertical: 8.v),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 24.v,
                  width: 36.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 6.v,
                  ),
                  decoration: AppDecoration.white.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder12,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGridOnprimarycontainer,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  height: 24.v,
                  width: 36.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 6.v,
                  ),
                  decoration: AppDecoration.white.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder12,
                  ),
                  child: CustomImageView(
                    imagePath:
                        ImageConstant.imgIconHorizontalBlueGray8000112x12,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontal(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: BlocSelector<HorizontalBloc, HorizontalState, HorizontalModel?>(
        selector: (state) => state.horizontalModelObj,
        builder: (context, horizontalModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 7.v,
              );
            },
            itemCount: horizontalModelObj?.horizontalItemList.length ?? 0,
            itemBuilder: (context, index) {
              HorizontalItemModel model =
                  horizontalModelObj?.horizontalItemList[index] ??
                      HorizontalItemModel();
              return HorizontalItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
