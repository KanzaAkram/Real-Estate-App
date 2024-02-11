import '../models/layout15_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Layout15ItemWidget extends StatelessWidget {
  Layout15ItemWidget(
    this.layout15ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout15ItemModel layout15ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: Column(
          children: [
            CustomImageView(
              imagePath: layout15ItemModelObj?.amanda,
              height: 70.adaptSize,
              width: 70.adaptSize,
              radius: BorderRadius.circular(
                35.h,
              ),
            ),
            SizedBox(height: 9.v),
            Text(
              layout15ItemModelObj.amanda1!,
              style: CustomTextStyles.labelLargeMedium,
            ),
          ],
        ),
      ),
    );
  }
}
