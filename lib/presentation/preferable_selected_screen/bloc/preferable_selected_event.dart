// ignore_for_file: must_be_immutable

part of 'preferable_selected_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PreferableSelected widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PreferableSelectedEvent extends Equatable {}

/// Event that is dispatched when the PreferableSelected widget is first created.
class PreferableSelectedInitialEvent extends PreferableSelectedEvent {
  @override
  List<Object?> get props => [];
}
