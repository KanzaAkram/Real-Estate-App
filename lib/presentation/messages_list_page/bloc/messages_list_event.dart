// ignore_for_file: must_be_immutable

part of 'messages_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MessagesList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MessagesListEvent extends Equatable {}

/// Event that is dispatched when the MessagesList widget is first created.
class MessagesListInitialEvent extends MessagesListEvent {
  @override
  List<Object?> get props => [];
}
