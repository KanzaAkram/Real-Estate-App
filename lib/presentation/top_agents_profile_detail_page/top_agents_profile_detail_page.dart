import '../top_agents_profile_detail_page/widgets/topagentsprofiledetail_item_widget.dart';
import 'bloc/top_agents_profile_detail_bloc.dart';
import 'models/top_agents_profile_detail_model.dart';
import 'models/topagentsprofiledetail_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';
import 'package:kanza_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class TopAgentsProfileDetailPage extends StatefulWidget {
  const TopAgentsProfileDetailPage({Key? key})
      : super(
          key: key,
        );

  @override
  TopAgentsProfileDetailPageState createState() =>
      TopAgentsProfileDetailPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TopAgentsProfileDetailBloc>(
      create: (context) =>
          TopAgentsProfileDetailBloc(TopAgentsProfileDetailState(
        topAgentsProfileDetailModelObj: TopAgentsProfileDetailModel(),
      ))
            ..add(TopAgentsProfileDetailInitialEvent()),
      child: TopAgentsProfileDetailPage(),
    );
  }
}

class TopAgentsProfileDetailPageState extends State<TopAgentsProfileDetailPage>
    with AutomaticKeepAliveClientMixin<TopAgentsProfileDetailPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.v),
                Column(
                  children: [
                    _buildButton(context),
                    Container(
                      height: 567.v,
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.h,
                        vertical: 14.v,
                      ),
                      decoration: AppDecoration.white,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _buildItemHeader(context),
                                SizedBox(height: 20.v),
                                _buildTopAgentsProfileDetail(context),
                              ],
                            ),
                          ),
                          CustomElevatedButton(
                            width: 327.h,
                            text: "lbl_start_chat".tr,
                            alignment: Alignment.bottomCenter,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomElevatedButton(
            height: 32.v,
            width: 152.h,
            text: "lbl_listing".tr,
            buttonStyle: CustomButtonStyles.fillWhiteA,
            buttonTextStyle: theme.textTheme.titleSmall!,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              right: 52.h,
              bottom: 6.v,
            ),
            child: Text(
              "lbl_history".tr,
              style: CustomTextStyles.titleSmallOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildItemHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 11.v,
            bottom: 6.v,
          ),
          child: Text(
            "lbl_140".tr,
            style: CustomTextStyles.titleMediumBold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 7.h,
            top: 10.v,
            bottom: 6.v,
          ),
          child: Text(
            "lbl_listings".tr,
            style: CustomTextStyles.titleMediumMedium,
          ),
        ),
        Container(
          width: 93.h,
          margin: EdgeInsets.only(left: 136.h),
          padding: EdgeInsets.all(8.h),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder20,
          ),
          child: Row(
            children: [
              Container(
                height: 24.v,
                width: 36.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.white.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder12,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGrid,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIconHorizontal,
                height: 12.adaptSize,
                width: 12.adaptSize,
                margin: EdgeInsets.only(
                  left: 17.h,
                  top: 6.v,
                  bottom: 6.v,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTopAgentsProfileDetail(BuildContext context) {
    return BlocSelector<TopAgentsProfileDetailBloc, TopAgentsProfileDetailState,
        TopAgentsProfileDetailModel?>(
      selector: (state) => state.topAgentsProfileDetailModelObj,
      builder: (context, topAgentsProfileDetailModelObj) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 232.v,
            crossAxisCount: 2,
            mainAxisSpacing: 7.h,
            crossAxisSpacing: 7.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: topAgentsProfileDetailModelObj
                  ?.topagentsprofiledetailItemList.length ??
              0,
          itemBuilder: (context, index) {
            TopagentsprofiledetailItemModel model =
                topAgentsProfileDetailModelObj
                        ?.topagentsprofiledetailItemList[index] ??
                    TopagentsprofiledetailItemModel();
            return TopagentsprofiledetailItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
