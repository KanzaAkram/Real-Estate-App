import '../models/messageslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class MessageslistItemWidget extends StatelessWidget {
  MessageslistItemWidget(
    this.messageslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MessageslistItemModel messageslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50.adaptSize,
            width: 50.adaptSize,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: messageslistItemModelObj?.milano,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.only(left: 37.h),
                    padding: EdgeInsets.all(2.h),
                    decoration: AppDecoration.outlineWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Container(
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.greenA400,
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 5.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  messageslistItemModelObj.milano1!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 8.v),
                Text(
                  messageslistItemModelObj.temporincididuntutlaboreetdolo!,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              top: 11.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    messageslistItemModelObj.text!,
                    style: CustomTextStyles.labelSmallOnPrimaryContainer,
                  ),
                ),
                SizedBox(height: 5.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 15.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillRedA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Text(
                      messageslistItemModelObj.itemCounter!,
                      style: CustomTextStyles.labelSmallWhiteA700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
