import '../models/preferableselected_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';
import 'package:kanza_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PreferableselectedItemWidget extends StatelessWidget {
  PreferableselectedItemWidget(
    this.preferableselectedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PreferableselectedItemModel preferableselectedItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.fillGreenA.copyWith(
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
                alignment: Alignment.centerLeft,
                children: [
                  CustomImageView(
                    imagePath: preferableselectedItemModelObj?.apartment,
                    height: 160.v,
                    width: 144.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        right: 111.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomIconButton(
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                            padding: EdgeInsets.all(7.h),
                            decoration: IconButtonStyleHelper.fillGreenATL12,
                            child: CustomImageView(
                              imagePath:
                                  preferableselectedItemModelObj?.checkmark,
                            ),
                          ),
                          SizedBox(height: 94.v),
                          CustomIconButton(
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            decoration: IconButtonStyleHelper.fillBlueGrayAf,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgClose,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 13.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                preferableselectedItemModelObj.apartment1!,
                style: CustomTextStyles.titleSmallWhiteA700_1,
              ),
            ),
            SizedBox(height: 5.v),
          ],
        ),
      ),
    );
  }
}
