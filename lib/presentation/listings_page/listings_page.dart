import '../listings_page/widgets/listings_item_widget.dart';
import 'bloc/listings_bloc.dart';
import 'models/listings_item_model.dart';
import 'models/listings_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';
import 'package:kanza_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ListingsPage extends StatefulWidget {
  const ListingsPage({Key? key})
      : super(
          key: key,
        );

  @override
  ListingsPageState createState() => ListingsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ListingsBloc>(
      create: (context) => ListingsBloc(ListingsState(
        listingsModelObj: ListingsModel(),
      ))
        ..add(ListingsInitialEvent()),
      child: ListingsPage(),
    );
  }
}

class ListingsPageState extends State<ListingsPage>
    with AutomaticKeepAliveClientMixin<ListingsPage> {
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      _buildItemHeader(context),
                      SizedBox(height: 20.v),
                      _buildListings(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildItemHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 11.v,
            bottom: 6.v,
          ),
          child: Text(
            "lbl_30".tr,
            style: CustomTextStyles.titleMediumBold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 5.h,
            top: 10.v,
            bottom: 7.v,
          ),
          child: Text(
            "lbl_listings".tr,
            style: CustomTextStyles.titleMediumMedium,
          ),
        ),
        Spacer(),
        Container(
          width: 93.h,
          padding: EdgeInsets.symmetric(vertical: 8.v),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGridOnprimarycontainer,
                height: 12.adaptSize,
                width: 12.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 6.v),
              ),
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
                  imagePath: ImageConstant.imgIconHorizontal12x12,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL20,
            child: CustomImageView(
              imagePath: ImageConstant.imgIconPlusWhiteA700,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildListings(BuildContext context) {
    return BlocSelector<ListingsBloc, ListingsState, ListingsModel?>(
      selector: (state) => state.listingsModelObj,
      builder: (context, listingsModelObj) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 232.v,
            crossAxisCount: 2,
            mainAxisSpacing: 7.h,
            crossAxisSpacing: 7.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: listingsModelObj?.listingsItemList.length ?? 0,
          itemBuilder: (context, index) {
            ListingsItemModel model =
                listingsModelObj?.listingsItemList[index] ??
                    ListingsItemModel();
            return ListingsItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
