// ignore_for_file: must_be_immutable

part of 'summary_success_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SummarySuccess widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SummarySuccessEvent extends Equatable {}

/// Event that is dispatched when the SummarySuccess widget is first created.
class SummarySuccessInitialEvent extends SummarySuccessEvent {
  @override
  List<Object?> get props => [];
}
