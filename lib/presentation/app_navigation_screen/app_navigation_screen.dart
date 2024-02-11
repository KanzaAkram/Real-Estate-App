import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash Screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Product Tour - One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.productTourOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Product Tour - Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.productTourTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Product Tour - Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.productTourThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: " Featured Estates".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.featuredEstatesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: " Real Estates List by Category".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.realEstatesListByCategoryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: " Top Locations".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.topLocationsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  " Top Locations - Location Detail".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.topLocationsLocationDetailScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: " Top Agents ".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.topAgentsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  " Top Agents - Profile Detail - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .topAgentsProfileDetailTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: " Review - Empty".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.reviewEmptyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: " Review - Fill".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.reviewFillScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: " Summary ".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.summaryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: " Form Detail".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.formDetailScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Add Location".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addLocationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Add Photos".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addPhotosScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: " Extra Information".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.extraInformationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Login".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Form - Empty".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.formEmptyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Notification List - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationListTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Chat".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.chatScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Call".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.callScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Favourite Empty".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.favouriteEmptyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: " Horizontal".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.horizontalScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Register Form - Empty".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.registerFormEmptyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Form - OTP".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.formOtpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Empty map".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.emptyMapScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: " Edit Profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.editProfileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: " All Reviews - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.allReviewsTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Empty search".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.emptySearchScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search Result".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchResultScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Filter - Choose Location".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.filterChooseLocationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Result - Filter".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resultFilterScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Location - Empty".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.locationEmptyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Location - Choose Location".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.locationChooseLocationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Location - Fill".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.locationFillScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Preferable ".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.preferableScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Preferable - Selected".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.preferableSelectedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Payment - Empty - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.paymentEmptyTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: " History Detail".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.historyDetailScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: " Add Review - Empty".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.addReviewEmptyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: " Add Review - Fill".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.addReviewFillScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "User - Empty".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.userEmptyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Edit Form".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.editFormScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Property Details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.propertyDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "360 View".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.viewScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "View on Map".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.viewOnMapScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reviews - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.reviewsTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reviews - Gallery".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.reviewsGalleryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: " Promotion".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.promotionScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
