import 'bloc/location_empty_bloc.dart';import 'dart:async';import 'models/location_empty_model.dart';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:kanza_s_application1/core/app_export.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_trailing_button.dart';import 'package:kanza_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:kanza_s_application1/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class LocationEmptyScreen extends StatelessWidget {LocationEmptyScreen({Key? key}) : super(key: key);

Completer<GoogleMapController> googleMapController = Completer();

static Widget builder(BuildContext context) { return BlocProvider<LocationEmptyBloc>(create: (context) => LocationEmptyBloc(LocationEmptyState(locationEmptyModelObj: LocationEmptyModel()))..add(LocationEmptyInitialEvent()), child: LocationEmptyScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<LocationEmptyBloc, LocationEmptyState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v), child: Column(children: [SizedBox(height: 40.v), Align(alignment: Alignment.centerLeft, child: Text("msg_add_your_location".tr, style: theme.textTheme.headlineSmall)), SizedBox(height: 30.v), Align(alignment: Alignment.centerLeft, child: Text("msg_you_can_edit_this".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 50.v), _buildMapStack(context), SizedBox(height: 15.v), _buildFormLocation(context), SizedBox(height: 67.v), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h)])), bottomNavigationBar: _buildNext(context)));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), actions: [AppbarTrailingButton(margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 8.v), onTap: () {onTapSkip(context);})]); } 
/// Section Widget
Widget _buildMap(BuildContext context) { return SizedBox(height: 300.v, width: 327.h, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)); } 
/// Section Widget
Widget _buildMapStack(BuildContext context) { return Card(clipBehavior: Clip.antiAlias, elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder25), child: Container(height: 300.v, width: 327.h, decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder25), child: Stack(alignment: Alignment.bottomCenter, children: [_buildMap(context), CustomElevatedButton(height: 50.v, width: 327.h, text: "lbl_select_on_map2".tr, buttonStyle: CustomButtonStyles.fillWhiteA2, buttonTextStyle: CustomTextStyles.titleSmallMedium, alignment: Alignment.bottomCenter)]))); } 
/// Section Widget
Widget _buildFormLocation(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgLinkedinDeepOrangeA20020x20, height: 20.adaptSize, width: 20.adaptSize), Padding(padding: EdgeInsets.only(left: 10.h, bottom: 2.v), child: Text("lbl_location_detail".tr, style: CustomTextStyles.bodyMediumOnPrimaryContainer)), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize)])); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(text: "lbl_next".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapNext(context);}); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkip(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
/// Navigates to the locationChooseLocationScreen when the action is triggered.
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.locationChooseLocationScreen, ); } 
 }
