import '../top_locations_screen/widgets/datagrid_item_widget.dart';import 'bloc/top_locations_bloc.dart';import 'models/datagrid_item_model.dart';import 'models/top_locations_model.dart';import 'package:flutter/material.dart';import 'package:kanza_s_application1/core/app_export.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:kanza_s_application1/widgets/app_bar/custom_app_bar.dart';class TopLocationsScreen extends StatelessWidget {const TopLocationsScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<TopLocationsBloc>(create: (context) => TopLocationsBloc(TopLocationsState(topLocationsModelObj: TopLocationsModel()))..add(TopLocationsInitialEvent()), child: TopLocationsScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 16.v), Text("lbl_top_locations".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 8.v), Text("msg_find_the_best_recommendations".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 35.v), _buildDataGrid(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 3.v, 301.h, 3.v), onTap: () {onTapArrowLeft(context);})); } 
/// Section Widget
Widget _buildDataGrid(BuildContext context) { return Expanded(child: BlocSelector<TopLocationsBloc, TopLocationsState, TopLocationsModel?>(selector: (state) => state.topLocationsModelObj, builder: (context, topLocationsModelObj) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 227.v, crossAxisCount: 2, mainAxisSpacing: 7.h, crossAxisSpacing: 7.h), physics: BouncingScrollPhysics(), itemCount: topLocationsModelObj?.datagridItemList.length ?? 0, itemBuilder: (context, index) {DatagridItemModel model = topLocationsModelObj?.datagridItemList[index] ?? DatagridItemModel(); return DatagridItemWidget(model, onTapEstatesCardLocation: () {onTapEstatesCardLocation(context);});});})); } 
/// Navigates to the topLocationsLocationDetailScreen when the action is triggered.
onTapEstatesCardLocation(BuildContext context) { NavigatorService.pushNamed(AppRoutes.topLocationsLocationDetailScreen); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
