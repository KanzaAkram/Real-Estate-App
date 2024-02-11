// ignore_for_file: must_be_immutable

part of 'add_review_fill_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddReviewFill widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddReviewFillEvent extends Equatable {}

/// Event that is dispatched when the AddReviewFill widget is first created.
class AddReviewFillInitialEvent extends AddReviewFillEvent {
  @override
  List<Object?> get props => [];
}
