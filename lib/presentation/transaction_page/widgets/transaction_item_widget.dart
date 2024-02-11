import '../models/transaction_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';
import 'package:kanza_s_application1/widgets/custom_elevated_button.dart';
import 'package:kanza_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TransactionItemWidget extends StatelessWidget {
  TransactionItemWidget(
    this.transactionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TransactionItemModel transactionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      width: 160.h,
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
                  imagePath: transactionItemModelObj?.wingsTower,
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
                          decoration: IconButtonStyleHelper.fillWhiteATL121,
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
                            CustomElevatedButton(
                              height: 28.v,
                              width: 43.h,
                              text: "lbl_rent".tr,
                              buttonStyle: CustomButtonStyles.fillBlueGrayAfTL8,
                              buttonTextStyle:
                                  CustomTextStyles.labelLargeGray100,
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
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              transactionItemModelObj.wingsTower1!,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClockPrimary,
                  height: 9.adaptSize,
                  width: 9.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    transactionItemModelObj.date!,
                    style: theme.textTheme.labelSmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}
