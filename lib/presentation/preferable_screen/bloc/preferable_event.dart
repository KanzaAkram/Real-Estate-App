// ignore_for_file: must_be_immutable

part of 'preferable_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Preferable widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PreferableEvent extends Equatable {}

/// Event that is dispatched when the Preferable widget is first created.
class PreferableInitialEvent extends PreferableEvent {
  @override
  List<Object?> get props => [];
}
