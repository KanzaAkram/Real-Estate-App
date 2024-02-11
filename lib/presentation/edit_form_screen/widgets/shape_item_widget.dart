import '../models/shape_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';
import 'package:kanza_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ShapeItemWidget extends StatelessWidget {
  ShapeItemWidget(
    this.shapeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ShapeItemModel shapeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 161.v,
        width: 159.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            CustomImageView(
              imagePath: shapeItemModelObj?.shape,
              height: 161.v,
              width: 159.h,
              radius: BorderRadius.circular(
                25.h,
              ),
              alignment: Alignment.center,
            ),
            CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.fillRedATL15,
              alignment: Alignment.topRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgIconCloseWhiteA700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
