import '../models/topagentsprofiledetail_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';
import 'package:kanza_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TopagentsprofiledetailItemWidget extends StatelessWidget {
  TopagentsprofiledetailItemWidget(
    this.topagentsprofiledetailItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TopagentsprofiledetailItemModel topagentsprofiledetailItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 160.v,
            width: 144.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: topagentsprofiledetailItemModelObj?.brookvaleVilla,
                  height: 160.v,
                  width: 144.h,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomIconButton(
                          height: 25.adaptSize,
                          width: 25.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          decoration: IconButtonStyleHelper.fillWhiteATL12,
                          alignment: Alignment.centerRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFavoriteRedA200,
                          ),
                        ),
                        SizedBox(height: 91.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 3.v),
                              child: CustomIconButton(
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                padding: EdgeInsets.all(5.h),
                                decoration:
                                    IconButtonStyleHelper.fillBlueGrayAf,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgClose,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.h,
                                vertical: 6.v,
                              ),
                              decoration: AppDecoration.fillBlueGrayAf.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    topagentsprofiledetailItemModelObj.price!,
                                    style: CustomTextStyles.labelLargeGray100,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 1.h,
                                      top: 2.v,
                                      bottom: 2.v,
                                    ),
                                    child: Text(
                                      topagentsprofiledetailItemModelObj.month!,
                                      style: CustomTextStyles.labelSmallGray100,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              topagentsprofiledetailItemModelObj.brookvaleVilla1!,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Row(
              children: [
                SizedBox(
                  width: 16.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: topagentsprofiledetailItemModelObj?.image,
                        height: 9.adaptSize,
                        width: 9.adaptSize,
                        margin: EdgeInsets.only(bottom: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          topagentsprofiledetailItemModelObj.text!,
                          style: CustomTextStyles.labelSmallBold,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLinkedin,
                  height: 9.adaptSize,
                  width: 9.adaptSize,
                  margin: EdgeInsets.only(left: 14.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    topagentsprofiledetailItemModelObj.jakartaIndonesia!,
                    style: theme.textTheme.labelSmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }
}
