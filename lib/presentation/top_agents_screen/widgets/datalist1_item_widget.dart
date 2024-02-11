import '../models/datalist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';
import 'package:kanza_s_application1/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Datalist1ItemWidget extends StatelessWidget {
  Datalist1ItemWidget(
    this.datalist1ItemModelObj, {
    Key? key,
    this.onTapEstatesCardUser,
  }) : super(
          key: key,
        );

  Datalist1ItemModel datalist1ItemModelObj;

  VoidCallback? onTapEstatesCardUser;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapEstatesCardUser!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 2.v),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 124.v,
                width: 114.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomElevatedButton(
                      height: 25.v,
                      width: 22.h,
                      text: "lbl_1".tr,
                      buttonStyle: CustomButtonStyles.fillOrange,
                      buttonTextStyle: CustomTextStyles.labelLargeWhiteA700,
                      alignment: Alignment.topLeft,
                    ),
                    CustomImageView(
                      imagePath: datalist1ItemModelObj?.amanda,
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                      radius: BorderRadius.circular(
                        50.h,
                      ),
                      alignment: Alignment.bottomRight,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.v),
            Text(
              datalist1ItemModelObj.amanda1!,
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 6.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 37.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSignalOrange300,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                      Text(
                        datalist1ItemModelObj.text!,
                        style: CustomTextStyles.labelLargeBluegray600_1,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 65.h,
                  margin: EdgeInsets.only(left: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgHome,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          datalist1ItemModelObj.text1!,
                          style: CustomTextStyles.labelLargeBluegray600_1,
                        ),
                      ),
                      Text(
                        datalist1ItemModelObj.sold!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
