// ignore_for_file: must_be_immutable

part of 'review_fill_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReviewFill widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReviewFillEvent extends Equatable {}

/// Event that is dispatched when the ReviewFill widget is first created.
class ReviewFillInitialEvent extends ReviewFillEvent {
  @override
  List<Object?> get props => [];
}
