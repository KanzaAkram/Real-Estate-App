import '../notification_list_page/widgets/categorylist_item_widget.dart';
import '../notification_list_page/widgets/notificationlist_item_widget.dart';
import '../notification_list_page/widgets/samuelellalist_item_widget.dart';
import 'bloc/notification_list_bloc.dart';
import 'models/categorylist_item_model.dart';
import 'models/notification_list_model.dart';
import 'models/notificationlist_item_model.dart';
import 'models/samuelellalist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NotificationListPage extends StatefulWidget {
  const NotificationListPage({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationListPageState createState() => NotificationListPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationListBloc>(
      create: (context) => NotificationListBloc(NotificationListState(
        notificationListModelObj: NotificationListModel(),
      ))
        ..add(NotificationListInitialEvent()),
      child: NotificationListPage(),
    );
  }
}

class NotificationListPageState extends State<NotificationListPage>
    with AutomaticKeepAliveClientMixin<NotificationListPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15.v),
                  decoration: AppDecoration.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 4.v),
                      _buildCategoryList(context),
                      SizedBox(height: 35.v),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_today".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 14.v),
                            _buildNotificationList(context),
                            SizedBox(height: 37.v),
                            Text(
                              "msg_older_notifications".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 16.v),
                            _buildSamuelEllaList(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoryList(BuildContext context) {
    return SizedBox(
      height: 54.v,
      child: BlocSelector<NotificationListBloc, NotificationListState,
          NotificationListModel?>(
        selector: (state) => state.notificationListModelObj,
        builder: (context, notificationListModelObj) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 24.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 8.h,
              );
            },
            itemCount:
                notificationListModelObj?.categorylistItemList.length ?? 0,
            itemBuilder: (context, index) {
              CategorylistItemModel model =
                  notificationListModelObj?.categorylistItemList[index] ??
                      CategorylistItemModel();
              return CategorylistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: BlocSelector<NotificationListBloc, NotificationListState,
          NotificationListModel?>(
        selector: (state) => state.notificationListModelObj,
        builder: (context, notificationListModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 10.v,
              );
            },
            itemCount:
                notificationListModelObj?.notificationlistItemList.length ?? 0,
            itemBuilder: (context, index) {
              NotificationlistItemModel model =
                  notificationListModelObj?.notificationlistItemList[index] ??
                      NotificationlistItemModel();
              return NotificationlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSamuelEllaList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: BlocSelector<NotificationListBloc, NotificationListState,
          NotificationListModel?>(
        selector: (state) => state.notificationListModelObj,
        builder: (context, notificationListModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 1.v,
              );
            },
            itemCount:
                notificationListModelObj?.samuelellalistItemList.length ?? 0,
            itemBuilder: (context, index) {
              SamuelellalistItemModel model =
                  notificationListModelObj?.samuelellalistItemList[index] ??
                      SamuelellalistItemModel();
              return SamuelellalistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
