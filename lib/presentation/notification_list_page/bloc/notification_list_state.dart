// ignore_for_file: must_be_immutable

part of 'notification_list_bloc.dart';

/// Represents the state of NotificationList in the application.
class NotificationListState extends Equatable {
  NotificationListState({this.notificationListModelObj});

  NotificationListModel? notificationListModelObj;

  @override
  List<Object?> get props => [
        notificationListModelObj,
      ];
  NotificationListState copyWith(
      {NotificationListModel? notificationListModelObj}) {
    return NotificationListState(
      notificationListModelObj:
          notificationListModelObj ?? this.notificationListModelObj,
    );
  }
}
