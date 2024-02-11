// ignore_for_file: must_be_immutable

part of 'empty_map_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EmptyMap widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EmptyMapEvent extends Equatable {}

/// Event that is dispatched when the EmptyMap widget is first created.
class EmptyMapInitialEvent extends EmptyMapEvent {
  @override
  List<Object?> get props => [];
}
