import 'bloc/extra_information_success_bloc.dart';
import 'models/extra_information_success_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';
import 'package:kanza_s_application1/widgets/custom_elevated_button.dart';
import 'package:kanza_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ExtraInformationSuccessBottomsheet extends StatelessWidget {
  const ExtraInformationSuccessBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ExtraInformationSuccessBloc>(
      create: (context) =>
          ExtraInformationSuccessBloc(ExtraInformationSuccessState(
        extraInformationSuccessModelObj: ExtraInformationSuccessModel(),
      ))
            ..add(ExtraInformationSuccessInitialEvent()),
      child: ExtraInformationSuccessBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          SizedBox(
            width: 60.h,
            child: Divider(),
          ),
          SizedBox(height: 22.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 92.h),
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillGreenA.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder71,
            ),
            child: Container(
              height: 110.adaptSize,
              width: 110.adaptSize,
              padding: EdgeInsets.all(20.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.circleBorder55,
              ),
              child: CustomIconButton(
                height: 70.adaptSize,
                width: 70.adaptSize,
                padding: EdgeInsets.all(19.h),
                decoration: IconButtonStyleHelper.fillGreenATL35,
                alignment: Alignment.center,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkWhiteA70070x70,
                ),
              ),
            ),
          ),
          SizedBox(height: 28.v),
          SizedBox(
            width: 205.h,
            child: Text(
              "msg_your_listing_is".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 27.v),
          Text(
            "msg_lorem_ipsum_dolor2".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 35.v),
          _buildButtonRow(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomElevatedButton(
            text: "lbl_add_more".tr,
            margin: EdgeInsets.only(right: 4.h),
            buttonStyle: CustomButtonStyles.fillGrayTL35,
            buttonTextStyle: CustomTextStyles.titleMedium16,
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            text: "lbl_finish".tr,
            margin: EdgeInsets.only(left: 4.h),
          ),
        ),
      ],
    );
  }
}
