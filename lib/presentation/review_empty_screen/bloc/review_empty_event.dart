// ignore_for_file: must_be_immutable

part of 'review_empty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReviewEmpty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReviewEmptyEvent extends Equatable {}

/// Event that is dispatched when the ReviewEmpty widget is first created.
class ReviewEmptyInitialEvent extends ReviewEmptyEvent {
  @override
  List<Object?> get props => [];
}
