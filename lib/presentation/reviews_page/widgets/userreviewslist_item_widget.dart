import '../models/userreviewslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';
import 'package:kanza_s_application1/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class UserreviewslistItemWidget extends StatelessWidget {
  UserreviewslistItemWidget(
    this.userreviewslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserreviewslistItemModel userreviewslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: userreviewslistItemModelObj?.kurtMullins,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            margin: EdgeInsets.only(bottom: 58.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 10.v,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      userreviewslistItemModelObj.kurtMullins1!,
                      style: CustomTextStyles.labelLargeSemiBold,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4.v),
                      child: CustomRatingBar(
                        ignoreGestures: true,
                        initialRating: 0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.v),
                Container(
                  width: 239.h,
                  margin: EdgeInsets.only(right: 8.h),
                  child: Text(
                    userreviewslistItemModelObj.description!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.labelMediumBluegray600_1.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 19.v),
                Text(
                  userreviewslistItemModelObj.time!,
                  style: CustomTextStyles.labelSmallOnPrimaryContainer,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
