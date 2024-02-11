// ignore_for_file: must_be_immutable

part of 'user_success_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserSuccess widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserSuccessEvent extends Equatable {}

/// Event that is dispatched when the UserSuccess widget is first created.
class UserSuccessInitialEvent extends UserSuccessEvent {
  @override
  List<Object?> get props => [];
}
