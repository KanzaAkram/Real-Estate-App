// ignore_for_file: must_be_immutable

part of 'edit_success_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditSuccess widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditSuccessEvent extends Equatable {}

/// Event that is dispatched when the EditSuccess widget is first created.
class EditSuccessInitialEvent extends EditSuccessEvent {
  @override
  List<Object?> get props => [];
}
