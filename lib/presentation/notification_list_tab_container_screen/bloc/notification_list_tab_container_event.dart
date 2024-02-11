// ignore_for_file: must_be_immutable

part of 'notification_list_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotificationListTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationListTabContainerEvent extends Equatable {}

/// Event that is dispatched when the NotificationListTabContainer widget is first created.
class NotificationListTabContainerInitialEvent
    extends NotificationListTabContainerEvent {
  @override
  List<Object?> get props => [];
}
