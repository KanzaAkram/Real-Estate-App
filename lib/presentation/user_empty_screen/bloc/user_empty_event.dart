// ignore_for_file: must_be_immutable

part of 'user_empty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserEmpty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserEmptyEvent extends Equatable {}

/// Event that is dispatched when the UserEmpty widget is first created.
class UserEmptyInitialEvent extends UserEmptyEvent {
  @override
  List<Object?> get props => [];
}
