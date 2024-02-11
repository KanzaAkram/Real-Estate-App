// ignore_for_file: must_be_immutable

part of 'notification_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotificationList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationListEvent extends Equatable {}

/// Event that is dispatched when the NotificationList widget is first created.
class NotificationListInitialEvent extends NotificationListEvent {
  @override
  List<Object?> get props => [];
}
