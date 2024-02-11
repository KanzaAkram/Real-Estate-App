// ignore_for_file: must_be_immutable

part of 'view_on_map_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ViewOnMap widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ViewOnMapEvent extends Equatable {}

/// Event that is dispatched when the ViewOnMap widget is first created.
class ViewOnMapInitialEvent extends ViewOnMapEvent {
  @override
  List<Object?> get props => [];
}
