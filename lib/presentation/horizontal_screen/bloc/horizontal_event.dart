// ignore_for_file: must_be_immutable

part of 'horizontal_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Horizontal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HorizontalEvent extends Equatable {}

/// Event that is dispatched when the Horizontal widget is first created.
class HorizontalInitialEvent extends HorizontalEvent {
  @override
  List<Object?> get props => [];
}
