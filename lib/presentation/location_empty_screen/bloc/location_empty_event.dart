// ignore_for_file: must_be_immutable

part of 'location_empty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LocationEmpty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LocationEmptyEvent extends Equatable {}

/// Event that is dispatched when the LocationEmpty widget is first created.
class LocationEmptyInitialEvent extends LocationEmptyEvent {
  @override
  List<Object?> get props => [];
}
