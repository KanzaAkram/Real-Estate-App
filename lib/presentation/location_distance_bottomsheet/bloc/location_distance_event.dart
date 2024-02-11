// ignore_for_file: must_be_immutable

part of 'location_distance_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LocationDistance widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LocationDistanceEvent extends Equatable {}

/// Event that is dispatched when the LocationDistance widget is first created.
class LocationDistanceInitialEvent extends LocationDistanceEvent {
  @override
  List<Object?> get props => [];
}
