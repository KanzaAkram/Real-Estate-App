// ignore_for_file: must_be_immutable

part of 'top_locations_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TopLocations widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TopLocationsEvent extends Equatable {}

/// Event that is dispatched when the TopLocations widget is first created.
class TopLocationsInitialEvent extends TopLocationsEvent {
  @override
  List<Object?> get props => [];
}
