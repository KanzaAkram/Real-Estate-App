// ignore_for_file: must_be_immutable

part of 'all_reviews_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AllReviews widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AllReviewsEvent extends Equatable {}

/// Event that is dispatched when the AllReviews widget is first created.
class AllReviewsInitialEvent extends AllReviewsEvent {
  @override
  List<Object?> get props => [];
}
