// ignore_for_file: must_be_immutable

part of 'filter_choose_location_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FilterChooseLocation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FilterChooseLocationEvent extends Equatable {}

/// Event that is dispatched when the FilterChooseLocation widget is first created.
class FilterChooseLocationInitialEvent extends FilterChooseLocationEvent {
  @override
  List<Object?> get props => [];
}
