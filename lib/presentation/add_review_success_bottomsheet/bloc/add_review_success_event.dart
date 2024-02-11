// ignore_for_file: must_be_immutable

part of 'add_review_success_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddReviewSuccess widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddReviewSuccessEvent extends Equatable {}

/// Event that is dispatched when the AddReviewSuccess widget is first created.
class AddReviewSuccessInitialEvent extends AddReviewSuccessEvent {
  @override
  List<Object?> get props => [];
}
