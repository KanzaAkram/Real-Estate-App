// ignore_for_file: must_be_immutable

part of 'form_empty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FormEmpty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FormEmptyEvent extends Equatable {}

/// Event that is dispatched when the FormEmpty widget is first created.
class FormEmptyInitialEvent extends FormEmptyEvent {
  @override
  List<Object?> get props => [];
}
