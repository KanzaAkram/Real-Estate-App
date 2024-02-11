// ignore_for_file: must_be_immutable

part of 'all_reviews_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AllReviewsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AllReviewsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the AllReviewsTabContainer widget is first created.
class AllReviewsTabContainerInitialEvent extends AllReviewsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
