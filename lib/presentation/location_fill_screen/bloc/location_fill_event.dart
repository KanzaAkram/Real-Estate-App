// ignore_for_file: must_be_immutable

part of 'location_fill_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LocationFill widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LocationFillEvent extends Equatable {}

/// Event that is dispatched when the LocationFill widget is first created.
class LocationFillInitialEvent extends LocationFillEvent {
  @override
  List<Object?> get props => [];
}
