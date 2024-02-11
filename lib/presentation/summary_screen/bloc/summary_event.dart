// ignore_for_file: must_be_immutable

part of 'summary_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Summary widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SummaryEvent extends Equatable {}

/// Event that is dispatched when the Summary widget is first created.
class SummaryInitialEvent extends SummaryEvent {
  @override
  List<Object?> get props => [];
}
