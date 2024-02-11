import 'bloc/select_location_bloc.dart';
import 'models/select_location_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';
import 'package:kanza_s_application1/widgets/custom_elevated_button.dart';
import 'package:kanza_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class SelectLocationBottomsheet extends StatelessWidget {
  const SelectLocationBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SelectLocationBloc>(
      create: (context) => SelectLocationBloc(SelectLocationState(
        selectLocationModelObj: SelectLocationModel(),
      ))
        ..add(SelectLocationInitialEvent()),
      child: SelectLocationBottomsheet(),
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
          SizedBox(height: 32.v),
          _buildTitle(context),
          SizedBox(height: 35.v),
          _buildCardLocation(
            context,
            petomponKecGajahmung: "msg_srengseng_kembangan".tr,
          ),
          SizedBox(height: 10.v),
          _buildCardLocation(
            context,
            petomponKecGajahmung: "msg_petompon_kec_gajahmungkur".tr,
          ),
          SizedBox(height: 35.v),
          CustomElevatedButton(
            text: "lbl_choose_location".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 16.v,
            bottom: 11.v,
          ),
          child: Text(
            "lbl_select_location".tr,
            style: CustomTextStyles.titleMediumBold,
          ),
        ),
        CustomElevatedButton(
          height: 50.v,
          width: 79.h,
          text: "lbl_edit".tr,
          buttonStyle: CustomButtonStyles.fillBlueGray,
          buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildCardLocation(
    BuildContext context, {
    required String petomponKecGajahmung,
  }) {
    return Container(
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.outlineBlueGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgLinkedin50x50,
            ),
          ),
          Expanded(
            child: Container(
              width: 232.h,
              margin: EdgeInsets.only(
                left: 15.h,
                top: 6.v,
              ),
              child: Text(
                petomponKecGajahmung,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.blueGray600,
                  height: 1.50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
