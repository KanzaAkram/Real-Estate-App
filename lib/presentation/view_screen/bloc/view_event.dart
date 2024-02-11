// ignore_for_file: must_be_immutable

part of 'view_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///View widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ViewEvent extends Equatable {}

/// Event that is dispatched when the View widget is first created.
class ViewInitialEvent extends ViewEvent {
  @override
  List<Object?> get props => [];
}
