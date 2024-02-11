// ignore_for_file: must_be_immutable

part of 'vertical_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Vertical widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VerticalEvent extends Equatable {}

/// Event that is dispatched when the Vertical widget is first created.
class VerticalInitialEvent extends VerticalEvent {
  @override
  List<Object?> get props => [];
}
