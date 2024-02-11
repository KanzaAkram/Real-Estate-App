// ignore_for_file: must_be_immutable

part of 'register_form_empty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegisterFormEmpty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegisterFormEmptyEvent extends Equatable {}

/// Event that is dispatched when the RegisterFormEmpty widget is first created.
class RegisterFormEmptyInitialEvent extends RegisterFormEmptyEvent {
  @override
  List<Object?> get props => [];
}
