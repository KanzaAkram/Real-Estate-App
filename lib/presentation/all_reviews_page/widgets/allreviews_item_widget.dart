import '../models/allreviews_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';
import 'package:kanza_s_application1/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class AllreviewsItemWidget extends StatelessWidget {
  AllreviewsItemWidget(
    this.allreviewsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AllreviewsItemModel allreviewsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.outlineBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL25,
          ),
          child: Row(
            children: [
              CustomImageView(
                imagePath: allreviewsItemModelObj?.fairviewApartment,
                height: 36.v,
                width: 74.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 5.v,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      allreviewsItemModelObj.fairviewApartment1!,
                      style: CustomTextStyles.labelMediumBold,
                    ),
                    SizedBox(height: 3.v),
                    SizedBox(
                      width: 121.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 25.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: allreviewsItemModelObj?.image,
                                  height: 9.adaptSize,
                                  width: 9.adaptSize,
                                  margin: EdgeInsets.only(bottom: 2.v),
                                ),
                                Text(
                                  allreviewsItemModelObj.text!,
                                  style:
                                      CustomTextStyles.labelMediumBluegray600,
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgLinkedinDeepOrangeA200,
                            height: 9.adaptSize,
                            width: 9.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Text(
                            allreviewsItemModelObj.semarangIndonesia!,
                            style: theme.textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.h),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.customBorderBL25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: allreviewsItemModelObj?.geraldo,
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
                          allreviewsItemModelObj.geraldo1!,
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
                        allreviewsItemModelObj.description!,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style:
                            CustomTextStyles.labelMediumBluegray600_1.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Text(
                      allreviewsItemModelObj.time!,
                      style: CustomTextStyles.labelSmallOnPrimaryContainer,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
