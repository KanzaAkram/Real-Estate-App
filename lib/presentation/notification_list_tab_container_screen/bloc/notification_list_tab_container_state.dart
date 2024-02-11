// ignore_for_file: must_be_immutable

part of 'notification_list_tab_container_bloc.dart';

/// Represents the state of NotificationListTabContainer in the application.
class NotificationListTabContainerState extends Equatable {
  NotificationListTabContainerState(
      {this.notificationListTabContainerModelObj});

  NotificationListTabContainerModel? notificationListTabContainerModelObj;

  @override
  List<Object?> get props => [
        notificationListTabContainerModelObj,
      ];
  NotificationListTabContainerState copyWith(
      {NotificationListTabContainerModel?
          notificationListTabContainerModelObj}) {
    return NotificationListTabContainerState(
      notificationListTabContainerModelObj:
          notificationListTabContainerModelObj ??
              this.notificationListTabContainerModelObj,
    );
  }
}
