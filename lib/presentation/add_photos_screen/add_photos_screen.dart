import '../add_photos_screen/widgets/gallery_item_widget.dart';import 'bloc/add_photos_bloc.dart';import 'models/add_photos_model.dart';import 'models/gallery_item_model.dart';import 'package:flutter/material.dart';import 'package:kanza_s_application1/core/app_export.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:kanza_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:kanza_s_application1/widgets/custom_elevated_button.dart';class AddPhotosScreen extends StatelessWidget {const AddPhotosScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<AddPhotosBloc>(create: (context) => AddPhotosBloc(AddPhotosState(addPhotosModelObj: AddPhotosModel()))..add(AddPhotosInitialEvent()), child: AddPhotosScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v), child: Column(children: [SizedBox(height: 38.v), Align(alignment: Alignment.centerLeft, child: SizedBox(width: 217.h, child: Text("msg_add_photos_to_your".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50)))), SizedBox(height: 40.v), _buildGallery(context), Spacer(), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h)])), bottomNavigationBar: _buildNext(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_add_listing".tr)); } 
/// Section Widget
Widget _buildGallery(BuildContext context) { return BlocSelector<AddPhotosBloc, AddPhotosState, AddPhotosModel?>(selector: (state) => state.addPhotosModelObj, builder: (context, addPhotosModelObj) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 162.v, crossAxisCount: 2, mainAxisSpacing: 9.h, crossAxisSpacing: 9.h), physics: NeverScrollableScrollPhysics(), itemCount: addPhotosModelObj?.galleryItemList.length ?? 0, itemBuilder: (context, index) {GalleryItemModel model = addPhotosModelObj?.galleryItemList[index] ?? GalleryItemModel(); return GalleryItemWidget(model);});}); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(text: "lbl_next".tr, margin: EdgeInsets.only(left: 25.h, right: 23.h, bottom: 24.v), onPressed: () {onTapNext(context);}); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the extraInformationScreen when the action is triggered.
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.extraInformationScreen, ); } 
 }
