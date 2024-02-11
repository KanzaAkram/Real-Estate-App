import 'bloc/home_container_bloc.dart';import 'models/home_container_model.dart';import 'package:flutter/material.dart';import 'package:kanza_s_application1/core/app_export.dart';import 'package:kanza_s_application1/presentation/example_data_page/example_data_page.dart';import 'package:kanza_s_application1/presentation/home_tab_container_page/home_tab_container_page.dart';import 'package:kanza_s_application1/presentation/transaction_tab_container_page/transaction_tab_container_page.dart';import 'package:kanza_s_application1/presentation/vertical_page/vertical_page.dart';import 'package:kanza_s_application1/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {HomeContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<HomeContainerBloc>(create: (context) => HomeContainerBloc(HomeContainerState(homeContainerModelObj: HomeContainerModel()))..add(HomeContainerInitialEvent()), child: HomeContainerScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<HomeContainerBloc, HomeContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homeTabContainerPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context)));}); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Userprimary: return AppRoutes.homeTabContainerPage; case BottomBarEnum.Rewind: return AppRoutes.exampleDataPage; case BottomBarEnum.Favoritebluegray80001: return AppRoutes.verticalPage; case BottomBarEnum.Lock: return AppRoutes.transactionTabContainerPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homeTabContainerPage: return HomeTabContainerPage.builder(context); case AppRoutes.exampleDataPage: return ExampleDataPage.builder(context); case AppRoutes.verticalPage: return VerticalPage.builder(context); case AppRoutes.transactionTabContainerPage: return TransactionTabContainerPage.builder(context); default: return DefaultWidget();} } 
 }
