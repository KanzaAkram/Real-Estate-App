import '../result_filter_screen/widgets/filter_item_widget.dart';import '../result_filter_screen/widgets/layout1_item_widget.dart';import 'bloc/result_filter_bloc.dart';import 'models/filter_item_model.dart';import 'models/layout1_item_model.dart';import 'models/result_filter_model.dart';import 'package:flutter/material.dart';import 'package:kanza_s_application1/core/app_export.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_trailing_iconbutton_three.dart';import 'package:kanza_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:kanza_s_application1/widgets/custom_search_view.dart';import 'package:kanza_s_application1/presentation/filter_full_bottomsheet/filter_full_bottomsheet.dart';class ResultFilterScreen extends StatelessWidget {const ResultFilterScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ResultFilterBloc>(create: (context) => ResultFilterBloc(ResultFilterState(resultFilterModelObj: ResultFilterModel()))..add(ResultFilterInitialEvent()), child: ResultFilterScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 7.v), BlocSelector<ResultFilterBloc, ResultFilterState, TextEditingController?>(selector: (state) => state.searchController, builder: (context, searchController) {return CustomSearchView(controller: searchController, hintText: "lbl_modern_house".tr);}), SizedBox(height: 20.v), _buildItemHeader(context), SizedBox(height: 20.v), _buildFilter(context), SizedBox(height: 20.v), _buildLayout(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_search_results".tr), actions: [AppbarTrailingIconbuttonThree(imagePath: ImageConstant.imgIconSettingWhiteA700, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 3.v), onTap: () {onTapIconSetting(context);})]); } 
/// Section Widget
Widget _buildItemHeader(BuildContext context) { return Row(children: [Padding(padding: EdgeInsets.only(top: 9.v, bottom: 8.v), child: Text("lbl_found".tr, style: CustomTextStyles.titleMediumMedium)), Padding(padding: EdgeInsets.only(left: 5.h, top: 10.v, bottom: 7.v), child: Text("lbl_0".tr, style: CustomTextStyles.titleMediumRedA200)), Padding(padding: EdgeInsets.only(left: 5.h, top: 9.v, bottom: 8.v), child: Text("lbl_estates".tr, style: CustomTextStyles.titleMediumMedium)), Spacer(), Container(width: 93.h, padding: EdgeInsets.symmetric(vertical: 8.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Container(height: 24.v, width: 36.h, padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: CustomImageView(imagePath: ImageConstant.imgGridOnprimarycontainer, height: 12.adaptSize, width: 12.adaptSize, alignment: Alignment.center)), Container(height: 24.v, width: 36.h, padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: CustomImageView(imagePath: ImageConstant.imgIconHorizontalBlueGray8000112x12, height: 12.adaptSize, width: 12.adaptSize, alignment: Alignment.center))]))]); } 
/// Section Widget
Widget _buildFilter(BuildContext context) { return BlocSelector<ResultFilterBloc, ResultFilterState, ResultFilterModel?>(selector: (state) => state.resultFilterModelObj, builder: (context, resultFilterModelObj) {return Wrap(runSpacing: 10.v, spacing: 10.h, children: List<Widget>.generate(resultFilterModelObj?.filterItemList.length ?? 0, (index) {FilterItemModel model = resultFilterModelObj?.filterItemList[index] ?? FilterItemModel(); return FilterItemWidget(model, onSelectedChipView: (value) {context.read<ResultFilterBloc>().add(UpdateChipViewEvent(index: index, isSelected: value));});}));}); } 
/// Section Widget
Widget _buildLayout(BuildContext context) { return BlocSelector<ResultFilterBloc, ResultFilterState, ResultFilterModel?>(selector: (state) => state.resultFilterModelObj, builder: (context, resultFilterModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 10.v);}, itemCount: resultFilterModelObj?.layout1ItemList.length ?? 0, itemBuilder: (context, index) {Layout1ItemModel model = resultFilterModelObj?.layout1ItemList[index] ?? Layout1ItemModel(); return Layout1ItemWidget(model);});}); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [FilterFullBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapIconSetting(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>FilterFullBottomsheet.builder(context),isScrollControlled: true); } 
 }
