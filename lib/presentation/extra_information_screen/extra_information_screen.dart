import '../extra_information_screen/widgets/environmentfacilitieschipview_item_widget.dart';import '../extra_information_screen/widgets/layoutchipview_item_widget.dart';import '../extra_information_screen/widgets/propertyfeatureslist_item_widget.dart';import '../extra_information_screen/widgets/totalroomschipview_item_widget.dart';import 'bloc/extra_information_bloc.dart';import 'models/environmentfacilitieschipview_item_model.dart';import 'models/extra_information_model.dart';import 'models/layoutchipview_item_model.dart';import 'models/propertyfeatureslist_item_model.dart';import 'models/totalroomschipview_item_model.dart';import 'package:flutter/material.dart';import 'package:kanza_s_application1/core/app_export.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:kanza_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:kanza_s_application1/widgets/custom_elevated_button.dart';import 'package:kanza_s_application1/widgets/custom_text_form_field.dart';import 'package:kanza_s_application1/presentation/extra_information_success_bottomsheet/extra_information_success_bottomsheet.dart';class ExtraInformationScreen extends StatelessWidget {const ExtraInformationScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ExtraInformationBloc>(create: (context) => ExtraInformationBloc(ExtraInformationState(extraInformationModelObj: ExtraInformationModel()))..add(ExtraInformationInitialEvent()), child: ExtraInformationScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 21.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 49.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 3.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 267.h, margin: EdgeInsets.only(left: 21.h, right: 81.h), child: Text("msg_almost_finish_complete_the".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50))), SizedBox(height: 43.v), Padding(padding: EdgeInsets.only(left: 21.h), child: Text("lbl_sell_price".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(left: 21.h, right: 27.h), child: BlocSelector<ExtraInformationBloc, ExtraInformationState, TextEditingController?>(selector: (state) => state.priceController, builder: (context, priceController) {return CustomTextFormField(controller: priceController, hintText: "lbl_180_000".tr, hintStyle: CustomTextStyles.labelLargeSemiBold, alignment: Alignment.center, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgIconoirmail, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v));})), SizedBox(height: 37.v), Padding(padding: EdgeInsets.only(left: 21.h), child: Text("lbl_rent_price".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(left: 21.h, right: 24.h), child: BlocSelector<ExtraInformationBloc, ExtraInformationState, TextEditingController?>(selector: (state) => state.priceController1, builder: (context, priceController1) {return CustomTextFormField(controller: priceController1, hintText: "lbl_315".tr, hintStyle: CustomTextStyles.labelLargeSemiBold, textInputAction: TextInputAction.done, alignment: Alignment.center, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgIconoirmail, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v));})), SizedBox(height: 15.v), _buildLayoutChipView(context), SizedBox(height: 38.v), Padding(padding: EdgeInsets.only(left: 21.h), child: Text("msg_property_features".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 14.v), _buildPropertyFeaturesList(context), SizedBox(height: 37.v), Padding(padding: EdgeInsets.only(left: 21.h), child: Text("lbl_total_rooms".tr, style: CustomTextStyles.titleMediumBold)), SizedBox(height: 16.v), _buildTotalRoomsChipView(context), SizedBox(height: 36.v), Padding(padding: EdgeInsets.only(left: 21.h), child: Text("msg_environment_facilities".tr, style: CustomTextStyles.titleMediumBold)), SizedBox(height: 16.v), _buildEnvironmentFacilitiesChipView(context), SizedBox(height: 46.v), CustomImageView(imagePath: ImageConstant.imgProgressBarGradient, height: 1.v, width: 100.h, alignment: Alignment.center)]))))])), bottomNavigationBar: _buildFinishButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_add_listing".tr)); } 
/// Section Widget
Widget _buildLayoutChipView(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 21.h), child: BlocSelector<ExtraInformationBloc, ExtraInformationState, ExtraInformationModel?>(selector: (state) => state.extraInformationModelObj, builder: (context, extraInformationModelObj) {return Wrap(runSpacing: 3.v, spacing: 3.h, children: List<Widget>.generate(extraInformationModelObj?.layoutchipviewItemList.length ?? 0, (index) {LayoutchipviewItemModel model = extraInformationModelObj?.layoutchipviewItemList[index] ?? LayoutchipviewItemModel(); return LayoutchipviewItemWidget(model, onSelectedChipView: (value) {context.read<ExtraInformationBloc>().add(UpdateChipViewEvent(index: index, isSelected: value));});}));})); } 
/// Section Widget
Widget _buildPropertyFeaturesList(BuildContext context) { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 21.h), child: BlocSelector<ExtraInformationBloc, ExtraInformationState, ExtraInformationModel?>(selector: (state) => state.extraInformationModelObj, builder: (context, extraInformationModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 15.v);}, itemCount: extraInformationModelObj?.propertyfeatureslistItemList.length ?? 0, itemBuilder: (context, index) {PropertyfeatureslistItemModel model = extraInformationModelObj?.propertyfeatureslistItemList[index] ?? PropertyfeatureslistItemModel(); return PropertyfeatureslistItemWidget(model);});}))); } 
/// Section Widget
Widget _buildTotalRoomsChipView(BuildContext context) { return Align(alignment: Alignment.centerRight, child: BlocSelector<ExtraInformationBloc, ExtraInformationState, ExtraInformationModel?>(selector: (state) => state.extraInformationModelObj, builder: (context, extraInformationModelObj) {return Wrap(runSpacing: 10.v, spacing: 10.h, children: List<Widget>.generate(extraInformationModelObj?.totalroomschipviewItemList.length ?? 0, (index) {TotalroomschipviewItemModel model = extraInformationModelObj?.totalroomschipviewItemList[index] ?? TotalroomschipviewItemModel(); return TotalroomschipviewItemWidget(model, onSelectedChipView: (value) {context.read<ExtraInformationBloc>().add(UpdateChipView1Event(index: index, isSelected: value));});}));})); } 
/// Section Widget
Widget _buildEnvironmentFacilitiesChipView(BuildContext context) { return Align(alignment: Alignment.center, child: BlocSelector<ExtraInformationBloc, ExtraInformationState, ExtraInformationModel?>(selector: (state) => state.extraInformationModelObj, builder: (context, extraInformationModelObj) {return Wrap(runSpacing: 4.v, spacing: 4.h, children: List<Widget>.generate(extraInformationModelObj?.environmentfacilitieschipviewItemList.length ?? 0, (index) {EnvironmentfacilitieschipviewItemModel model = extraInformationModelObj?.environmentfacilitieschipviewItemList[index] ?? EnvironmentfacilitieschipviewItemModel(); return EnvironmentfacilitieschipviewItemWidget(model, onSelectedChipView: (value) {context.read<ExtraInformationBloc>().add(UpdateChipView2Event(index: index, isSelected: value));});}));})); } 
/// Section Widget
Widget _buildFinishButton(BuildContext context) { return CustomElevatedButton(text: "lbl_finish".tr, margin: EdgeInsets.only(left: 25.h, right: 23.h, bottom: 24.v), onPressed: () {onTapFinishButton(context);}); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [ExtraInformationSuccessBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapFinishButton(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>ExtraInformationSuccessBottomsheet.builder(context),isScrollControlled: true); } 
 }
