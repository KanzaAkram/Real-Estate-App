import '../models/cardlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';
import 'package:kanza_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CardlistItemWidget extends StatelessWidget {
  CardlistItemWidget(
    this.cardlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardlistItemModel cardlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 159.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.fillOrange.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder25,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 25.adaptSize,
                width: 25.adaptSize,
                padding: EdgeInsets.all(7.h),
                decoration: IconButtonStyleHelper.fillWhiteATL122,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                ),
              ),
              SizedBox(height: 41.v),
              Text(
                cardlistItemModelObj.text!,
                style: CustomTextStyles.titleMediumWhiteA700_1,
              ),
              SizedBox(height: 25.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cardlistItemModelObj.balance!,
                          style: CustomTextStyles.labelSmallWhiteA700SemiBold_1,
                        ),
                        SizedBox(height: 7.v),
                        Text(
                          cardlistItemModelObj.price!,
                          style: CustomTextStyles.labelLargeWhiteA700,
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: cardlistItemModelObj?.balance1,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 61.h,
                      top: 13.v,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
