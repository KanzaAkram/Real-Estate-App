// ignore_for_file: must_be_immutable

part of 'select_location_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SelectLocation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SelectLocationEvent extends Equatable {}

/// Event that is dispatched when the SelectLocation widget is first created.
class SelectLocationInitialEvent extends SelectLocationEvent {
  @override
  List<Object?> get props => [];
}
