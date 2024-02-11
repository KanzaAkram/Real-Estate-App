import '../add_review_fill_screen/widgets/addreviewfill_item_widget.dart';import 'bloc/add_review_fill_bloc.dart';import 'models/add_review_fill_model.dart';import 'models/addreviewfill_item_model.dart';import 'package:flutter/material.dart';import 'package:kanza_s_application1/core/app_export.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:kanza_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:kanza_s_application1/widgets/custom_elevated_button.dart';import 'package:kanza_s_application1/widgets/custom_rating_bar.dart';import 'package:kanza_s_application1/widgets/custom_text_form_field.dart';import 'package:kanza_s_application1/presentation/add_review_success_bottomsheet/add_review_success_bottomsheet.dart';class AddReviewFillScreen extends StatelessWidget {const AddReviewFillScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<AddReviewFillBloc>(create: (context) => AddReviewFillBloc(AddReviewFillState(addReviewFillModelObj: AddReviewFillModel()))..add(AddReviewFillInitialEvent()), child: AddReviewFillScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 21.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 49.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 272.h, margin: EdgeInsets.only(right: 55.h), child: Text("msg_hi_how_was_your".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50))), SizedBox(height: 27.v), Text("msg_lorem_ipsum_dolor6".tr, style: theme.textTheme.bodySmall), SizedBox(height: 52.v), Padding(padding: EdgeInsets.only(right: 40.h), child: Row(children: [CustomRatingBar(initialRating: 0, itemSize: 40), Padding(padding: EdgeInsets.only(left: 15.h, top: 4.v, bottom: 4.v), child: Text("lbl_4_0".tr, style: CustomTextStyles.headlineSmallMontserrat))])), SizedBox(height: 20.v), BlocSelector<AddReviewFillBloc, AddReviewFillState, TextEditingController?>(selector: (state) => state.formTextareaController, builder: (context, formTextareaController) {return CustomTextFormField(controller: formTextareaController, hintText: "msg_lorem_ipsum_dolor7".tr, hintStyle: CustomTextStyles.labelLargeSemiBold, textInputAction: TextInputAction.done, maxLines: 4, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 23.v));}), SizedBox(height: 15.v), _buildAddReviewFill(context)]))))])), bottomNavigationBar: _buildSubmit(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_add_review".tr)); } 
/// Section Widget
Widget _buildAddReviewFill(BuildContext context) { return BlocSelector<AddReviewFillBloc, AddReviewFillState, AddReviewFillModel?>(selector: (state) => state.addReviewFillModelObj, builder: (context, addReviewFillModelObj) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 162.v, crossAxisCount: 2, mainAxisSpacing: 9.h, crossAxisSpacing: 9.h), physics: NeverScrollableScrollPhysics(), itemCount: addReviewFillModelObj?.addreviewfillItemList.length ?? 0, itemBuilder: (context, index) {AddreviewfillItemModel model = addReviewFillModelObj?.addreviewfillItemList[index] ?? AddreviewfillItemModel(); return AddreviewfillItemWidget(model);});}); } 
/// Section Widget
Widget _buildSubmit(BuildContext context) { return CustomElevatedButton(text: "lbl_submit".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapSubmit(context);}); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [AddReviewSuccessBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapSubmit(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>AddReviewSuccessBottomsheet.builder(context),isScrollControlled: true); } 
 }
