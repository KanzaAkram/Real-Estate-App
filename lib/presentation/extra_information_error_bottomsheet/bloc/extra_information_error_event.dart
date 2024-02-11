// ignore_for_file: must_be_immutable

part of 'extra_information_error_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExtraInformationError widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExtraInformationErrorEvent extends Equatable {}

/// Event that is dispatched when the ExtraInformationError widget is first created.
class ExtraInformationErrorInitialEvent extends ExtraInformationErrorEvent {
  @override
  List<Object?> get props => [];
}
