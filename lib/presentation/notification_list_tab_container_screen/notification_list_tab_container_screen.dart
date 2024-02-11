import 'bloc/notification_list_tab_container_bloc.dart';import 'models/notification_list_tab_container_model.dart';import 'package:flutter/material.dart';import 'package:kanza_s_application1/core/app_export.dart';import 'package:kanza_s_application1/presentation/messages_list_page/messages_list_page.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_trailing_iconbutton_two.dart';import 'package:kanza_s_application1/widgets/app_bar/custom_app_bar.dart';class NotificationListTabContainerScreen extends StatefulWidget {const NotificationListTabContainerScreen({Key? key}) : super(key: key);

@override NotificationListTabContainerScreenState createState() =>  NotificationListTabContainerScreenState();

static Widget builder(BuildContext context) { return BlocProvider<NotificationListTabContainerBloc>(create: (context) => NotificationListTabContainerBloc(NotificationListTabContainerState(notificationListTabContainerModelObj: NotificationListTabContainerModel()))..add(NotificationListTabContainerInitialEvent()), child: NotificationListTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class NotificationListTabContainerScreenState extends State<NotificationListTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { return BlocBuilder<NotificationListTabContainerBloc, NotificationListTabContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 17.v), _buildTabview(context), Expanded(child: SizedBox(height: 690.v, child: TabBarView(controller: tabviewController, children: [MessagesListPage.builder(context), MessagesListPage.builder(context)])))]))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), actions: [AppbarTrailingIconbuttonTwo(imagePath: ImageConstant.imgThumbsUp, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 3.v))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 50.v, width: 327.h, decoration: BoxDecoration(color: appTheme.gray100, borderRadius: BorderRadius.circular(25.h)), child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.blueGray80001, labelStyle: TextStyle(fontSize: 14.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w600), unselectedLabelColor: theme.colorScheme.onPrimaryContainer, unselectedLabelStyle: TextStyle(fontSize: 14.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w600), indicatorPadding: EdgeInsets.all(9.0.h), indicator: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(16.h)), tabs: [Tab(child: Text("lbl_listing".tr)), Tab(child: Text("lbl_history".tr))])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
