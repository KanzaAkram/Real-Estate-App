// ignore_for_file: must_be_immutable

part of 'location_choose_location_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LocationChooseLocation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LocationChooseLocationEvent extends Equatable {}

/// Event that is dispatched when the LocationChooseLocation widget is first created.
class LocationChooseLocationInitialEvent extends LocationChooseLocationEvent {
  @override
  List<Object?> get props => [];
}
