import 'bloc/home_tab_container_bloc.dart';
import 'models/home_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';
import 'package:kanza_s_application1/presentation/home_page/home_page.dart';
import 'package:kanza_s_application1/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:kanza_s_application1/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:kanza_s_application1/widgets/app_bar/appbar_trailing_iconbutton_five.dart';
import 'package:kanza_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kanza_s_application1/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomeTabContainerPage extends StatefulWidget {
  const HomeTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeTabContainerPageState createState() => HomeTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeTabContainerBloc>(
      create: (context) => HomeTabContainerBloc(HomeTabContainerState(
        homeTabContainerModelObj: HomeTabContainerModel(),
      ))
        ..add(HomeTabContainerInitialEvent()),
      child: HomeTabContainerPage(),
    );
  }
}

class HomeTabContainerPageState extends State<HomeTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 34.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 255.h,
                  margin: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "msg_hey_jonathan_let_s".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 21.v),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: BlocSelector<HomeTabContainerBloc,
                        HomeTabContainerState, TextEditingController?>(
                      selector: (state) => state.searchController,
                      builder: (context, searchController) {
                        return CustomSearchView(
                          controller: searchController,
                          hintText: "lbl_find_location".tr,
                          alignment: Alignment.center,
                          contentPadding: EdgeInsets.symmetric(vertical: 26.v),
                          borderDecoration:
                              SearchViewStyleHelper.outlineIndigoB,
                          fillColor: appTheme.whiteA700.withOpacity(0.8),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 26.v),
                _buildTabview(context),
                SizedBox(
                  height: 1250.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      HomePage.builder(context),
                      HomePage.builder(context),
                      HomePage.builder(context),
                      HomePage.builder(context),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: BlocSelector<HomeTabContainerBloc, HomeTabContainerState,
          HomeTabContainerModel?>(
        selector: (state) => state.homeTabContainerModelObj,
        builder: (context, homeTabContainerModelObj) {
          return AppbarTitleDropdown(
            margin: EdgeInsets.only(left: 24.h),
            hintText: "msg_jakarta_indonesia".tr,
            items: homeTabContainerModelObj?.dropdownItemList ?? [],
            onTap: (value) {
              context
                  .read<HomeTabContainerBloc>()
                  .add(onSelected(value: value));
            },
          );
        },
      ),
      actions: [
        AppbarTrailingIconbuttonFive(
          imagePath: ImageConstant.imgIonNotificationsOutline,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 3.v,
            right: 3.h,
          ),
        ),
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgShape69,
          margin: EdgeInsets.only(
            left: 8.h,
            top: 3.v,
            right: 27.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 51.v,
      width: 351.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.gray100,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.blueGray80001,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
        indicatorPadding: EdgeInsets.all(
          0.5.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.greenA400,
          borderRadius: BorderRadius.circular(
            25.h,
          ),
        ),
        tabs: [
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.fillGreenA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 18.v,
                    width: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "lbl_all".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 21.h,
                vertical: 16.v,
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
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "lbl_house".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 16.v,
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
                      top: 3.v,
                    ),
                    child: Text(
                      "lbl_apartment".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 21.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 2.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 1.v,
                    ),
                    child: Text(
                      "lbl_house".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildLayout(
    BuildContext context, {
    required String house,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClose,
            height: 15.adaptSize,
            width: 15.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 1.v,
            ),
            child: Text(
              house,
              style: CustomTextStyles.labelLargeMedium.copyWith(
                color: appTheme.blueGray80001,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
