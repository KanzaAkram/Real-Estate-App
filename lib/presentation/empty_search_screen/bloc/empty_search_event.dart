// ignore_for_file: must_be_immutable

part of 'empty_search_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EmptySearch widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EmptySearchEvent extends Equatable {}

/// Event that is dispatched when the EmptySearch widget is first created.
class EmptySearchInitialEvent extends EmptySearchEvent {
  @override
  List<Object?> get props => [];
}
