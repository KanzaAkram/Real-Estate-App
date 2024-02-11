// ignore_for_file: must_be_immutable

part of 'add_review_empty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddReviewEmpty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddReviewEmptyEvent extends Equatable {}

/// Event that is dispatched when the AddReviewEmpty widget is first created.
class AddReviewEmptyInitialEvent extends AddReviewEmptyEvent {
  @override
  List<Object?> get props => [];
}
