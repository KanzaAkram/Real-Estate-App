import '../models/layout14_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Layout14ItemWidget extends StatelessWidget {
  Layout14ItemWidget(
    this.layout14ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout14ItemModel layout14ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder28,
      ),
      width: 89.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: layout14ItemModelObj?.bali,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 10.v,
              bottom: 12.v,
            ),
            child: Text(
              layout14ItemModelObj.bali1!,
              style: CustomTextStyles.titleSmallMedium,
            ),
          ),
        ],
      ),
    );
  }
}
