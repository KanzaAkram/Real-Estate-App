import '../models/layout12_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Layout12ItemWidget extends StatelessWidget {
  Layout12ItemWidget(
    this.layout12ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout12ItemModel layout12ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 123.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 18.v,
                width: 15.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 5.v,
                ),
                child: Text(
                  layout12ItemModelObj.hospitalCounter!,
                  style: CustomTextStyles.labelMediumBluegray600_1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
