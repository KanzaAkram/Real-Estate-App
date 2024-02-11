// ignore_for_file: must_be_immutable

part of 'history_detail_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HistoryDetail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HistoryDetailEvent extends Equatable {}

/// Event that is dispatched when the HistoryDetail widget is first created.
class HistoryDetailInitialEvent extends HistoryDetailEvent {
  @override
  List<Object?> get props => [];
}
