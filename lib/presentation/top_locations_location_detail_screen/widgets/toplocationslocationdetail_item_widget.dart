import '../models/toplocationslocationdetail_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';
import 'package:kanza_s_application1/widgets/custom_elevated_button.dart';
import 'package:kanza_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ToplocationslocationdetailItemWidget extends StatelessWidget {
  ToplocationslocationdetailItemWidget(
    this.toplocationslocationdetailItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ToplocationslocationdetailItemModel toplocationslocationdetailItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 140.v,
              width: 168.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgShape140x168,
                    height: 140.v,
                    width: 168.h,
                    radius: BorderRadius.circular(
                      18.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        right: 104.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                            padding: EdgeInsets.all(6.h),
                            decoration: IconButtonStyleHelper.fillWhiteATL12,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFavoriteRedA200,
                            ),
                          ),
                          SizedBox(height: 75.v),
                          CustomElevatedButton(
                            height: 24.v,
                            width: 56.h,
                            text: "lbl_house".tr,
                            leftIcon: Container(
                              margin: EdgeInsets.only(right: 6.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgClose,
                                height: 13.v,
                                width: 11.h,
                              ),
                            ),
                            buttonStyle: CustomButtonStyles.fillBlueGrayAfTL8,
                            buttonTextStyle: CustomTextStyles.labelSmallGray100,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 9.v,
                bottom: 14.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 98.h,
                    child: Text(
                      toplocationslocationdetailItemModelObj.flowerHeavenHouse!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSignalOrange300,
                        height: 9.adaptSize,
                        width: 9.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          toplocationslocationdetailItemModelObj.text!,
                          style: CustomTextStyles.labelSmallBold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLinkedin,
                        height: 9.adaptSize,
                        width: 9.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          toplocationslocationdetailItemModelObj.baliIndonesia!,
                          style: theme.textTheme.labelSmall,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 19.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        toplocationslocationdetailItemModelObj.price!,
                        style: CustomTextStyles.titleMedium16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 3.v,
                          bottom: 5.v,
                        ),
                        child: Text(
                          toplocationslocationdetailItemModelObj.month!,
                          style: CustomTextStyles.labelSmallBluegray80001,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
