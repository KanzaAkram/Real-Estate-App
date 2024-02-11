import '../top_agents_screen/widgets/datalist1_item_widget.dart';import 'bloc/top_agents_bloc.dart';import 'models/datalist1_item_model.dart';import 'models/top_agents_model.dart';import 'package:flutter/material.dart';import 'package:kanza_s_application1/core/app_export.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:kanza_s_application1/widgets/app_bar/custom_app_bar.dart';class TopAgentsScreen extends StatelessWidget {const TopAgentsScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<TopAgentsBloc>(create: (context) => TopAgentsBloc(TopAgentsState(topAgentsModelObj: TopAgentsModel()))..add(TopAgentsInitialEvent()), child: TopAgentsScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 37.v), child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_top_estate_agent".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 8.v), Text("msg_find_the_best_recommendations".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 35.v), _buildDataList(context)])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 3.v, 301.h, 3.v), onTap: () {onTapArrowLeft(context);})); } 
/// Section Widget
Widget _buildDataList(BuildContext context) { return BlocSelector<TopAgentsBloc, TopAgentsState, TopAgentsModel?>(selector: (state) => state.topAgentsModelObj, builder: (context, topAgentsModelObj) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 207.v, crossAxisCount: 2, mainAxisSpacing: 7.h, crossAxisSpacing: 7.h), physics: NeverScrollableScrollPhysics(), itemCount: topAgentsModelObj?.datalist1ItemList.length ?? 0, itemBuilder: (context, index) {Datalist1ItemModel model = topAgentsModelObj?.datalist1ItemList[index] ?? Datalist1ItemModel(); return Datalist1ItemWidget(model, onTapEstatesCardUser: () {onTapEstatesCardUser(context);});});}); } 
/// Navigates to the topAgentsProfileDetailTabContainerScreen when the action is triggered.
onTapEstatesCardUser(BuildContext context) { NavigatorService.pushNamed(AppRoutes.topAgentsProfileDetailTabContainerScreen); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
