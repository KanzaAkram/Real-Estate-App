import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/categorylist_item_model.dart';
import '../models/notificationlist_item_model.dart';
import '../models/samuelellalist_item_model.dart';
import 'package:kanza_s_application1/presentation/notification_list_page/models/notification_list_model.dart';
part 'notification_list_event.dart';
part 'notification_list_state.dart';

/// A bloc that manages the state of a NotificationList according to the event that is dispatched to it.
class NotificationListBloc
    extends Bloc<NotificationListEvent, NotificationListState> {
  NotificationListBloc(NotificationListState initialState)
      : super(initialState) {
    on<NotificationListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationListInitialEvent event,
    Emitter<NotificationListState> emit,
  ) async {
    emit(state.copyWith(
        notificationListModelObj: state.notificationListModelObj?.copyWith(
      categorylistItemList: fillCategorylistItemList(),
      notificationlistItemList: fillNotificationlistItemList(),
      samuelellalistItemList: fillSamuelellalistItemList(),
    )));
  }

  List<CategorylistItemModel> fillCategorylistItemList() {
    return [
      CategorylistItemModel(all: "All"),
      CategorylistItemModel(all: "Review"),
      CategorylistItemModel(all: " Sold"),
      CategorylistItemModel(all: "House")
    ];
  }

  List<NotificationlistItemModel> fillNotificationlistItemList() {
    return [
      NotificationlistItemModel(
          emmettPerry: ImageConstant.imgShape50x50,
          emmettPerry1: "Emmett Perry",
          time: "10 mins ago")
    ];
  }

  List<SamuelellalistItemModel> fillSamuelellalistItemList() {
    return List.generate(1, (index) => SamuelellalistItemModel());
  }
}
