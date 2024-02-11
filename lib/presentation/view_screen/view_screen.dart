import 'bloc/view_bloc.dart';import 'models/view_model.dart';import 'package:flutter/material.dart';import 'package:kanza_s_application1/core/app_export.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:kanza_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:kanza_s_application1/widgets/custom_elevated_button.dart';import 'package:kanza_s_application1/widgets/custom_icon_button.dart';class ViewScreen extends StatelessWidget {const ViewScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ViewBloc>(create: (context) => ViewBloc(ViewState(viewModelObj: ViewModel()))..add(ViewInitialEvent()), child: ViewScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<ViewBloc, ViewState>(builder: (context, state) {return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, appBar: _buildAppBar(context), body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.img360View), fit: BoxFit.cover)), child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 24.v), child: Column(children: [SizedBox(height: 67.v), _buildRefresh(context), SizedBox(height: 72.v), _buildLivingRoom(context), SizedBox(height: 13.v), _buildEstatesCardWide(context)])))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 3.v, 301.h, 3.v), onTap: () {onTapArrowLeft(context);})); } 
/// Section Widget
Widget _buildRefresh(BuildContext context) { return SizedBox(height: 365.v, width: 355.h, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(top: 197.v, bottom: 85.v), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: 83.v, width: 40.h, padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 30.v), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.customBorderLR18), child: CustomImageView(imagePath: ImageConstant.imgRefresh, height: 22.adaptSize, width: 22.adaptSize, alignment: Alignment.centerLeft)), Container(height: 83.v, width: 40.h, padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 30.v), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.customBorderTL18), child: CustomImageView(imagePath: ImageConstant.imgForward, height: 22.adaptSize, width: 22.adaptSize, alignment: Alignment.centerRight))]))), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 14.h, right: 54.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Align(alignment: Alignment.centerRight, child: Container(margin: EdgeInsets.only(left: 252.h, right: 15.h), padding: EdgeInsets.all(5.h), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Container(height: 9.adaptSize, width: 9.adaptSize, decoration: BoxDecoration(color: appTheme.gray100, borderRadius: BorderRadius.circular(4.h))))), SizedBox(height: 95.v), Container(margin: EdgeInsets.only(right: 267.h), padding: EdgeInsets.all(5.h), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Container(height: 9.adaptSize, width: 9.adaptSize, decoration: BoxDecoration(color: appTheme.gray100, borderRadius: BorderRadius.circular(4.h)))), SizedBox(height: 44.v), Padding(padding: EdgeInsets.only(left: 57.h), child: Row(children: [Container(margin: EdgeInsets.symmetric(vertical: 9.v), padding: EdgeInsets.all(9.h), decoration: AppDecoration.blur.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15), child: Container(height: 16.adaptSize, width: 16.adaptSize, decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(8.h)))), Container(margin: EdgeInsets.only(left: 7.h), padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 10.v), decoration: AppDecoration.blur.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text("msg_jati_dining_table".tr, style: theme.textTheme.labelLarge), SizedBox(height: 6.v), Text("msg_2_people_capacity".tr, style: theme.textTheme.labelSmall)]))])), SizedBox(height: 112.v), Align(alignment: Alignment.centerRight, child: Container(margin: EdgeInsets.only(left: 267.h), padding: EdgeInsets.all(5.h), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Container(height: 9.adaptSize, width: 9.adaptSize, decoration: BoxDecoration(color: appTheme.gray100, borderRadius: BorderRadius.circular(4.h)))))])))])); } 
/// Section Widget
Widget _buildLivingRoom(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 14.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomElevatedButton(height: 50.v, width: 122.h, text: "lbl_living_room".tr, buttonStyle: CustomButtonStyles.fillBlueGrayAfTL25, buttonTextStyle: CustomTextStyles.labelLargeWhiteA700), CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(14.h), decoration: IconButtonStyleHelper.fillWhiteA, child: CustomImageView(imagePath: ImageConstant.imgSettingsBlueGray8000120x20))])); } 
/// Section Widget
Widget _buildEstatesCardWide(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 14.h), padding: EdgeInsets.all(8.h), decoration: AppDecoration.blur.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisSize: MainAxisSize.max, children: [SizedBox(height: 104.v, width: 168.h, child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape160x144, height: 104.v, width: 168.h, radius: BorderRadius.circular(15.h), alignment: Alignment.center), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 8.h, right: 88.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomIconButton(height: 25.adaptSize, width: 25.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillWhiteATL121, child: CustomImageView(imagePath: ImageConstant.imgFavoriteRedA200)), SizedBox(height: 39.v), CustomElevatedButton(height: 24.v, width: 72.h, text: "lbl_apartment".tr, leftIcon: Container(margin: EdgeInsets.only(right: 6.h), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 13.v, width: 11.h)), buttonStyle: CustomButtonStyles.fillBlueGrayAfTL8, buttonTextStyle: CustomTextStyles.labelSmallGray100)])))])), Padding(padding: EdgeInsets.only(left: 16.h, top: 18.v, bottom: 14.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(width: 88.h, child: Text("msg_sky_dandelions_apartment".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelLarge!.copyWith(height: 1.50))), SizedBox(height: 8.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgSignalOrange300, height: 9.adaptSize, width: 9.adaptSize, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("lbl_4_2".tr, style: CustomTextStyles.labelSmallBold))]), SizedBox(height: 6.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgLinkedin, height: 9.adaptSize, width: 9.adaptSize), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("msg_jakarta_indonesia".tr, style: theme.textTheme.labelSmall))])]))])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
