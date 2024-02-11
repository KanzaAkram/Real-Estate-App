// ignore_for_file: must_be_immutable

part of 'delete_confirmation_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DeleteConfirmation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DeleteConfirmationEvent extends Equatable {}

/// Event that is dispatched when the DeleteConfirmation widget is first created.
class DeleteConfirmationInitialEvent extends DeleteConfirmationEvent {
  @override
  List<Object?> get props => [];
}
