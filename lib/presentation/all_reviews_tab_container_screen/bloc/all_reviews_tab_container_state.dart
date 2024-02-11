// ignore_for_file: must_be_immutable

part of 'all_reviews_tab_container_bloc.dart';

/// Represents the state of AllReviewsTabContainer in the application.
class AllReviewsTabContainerState extends Equatable {
  AllReviewsTabContainerState({this.allReviewsTabContainerModelObj});

  AllReviewsTabContainerModel? allReviewsTabContainerModelObj;

  @override
  List<Object?> get props => [
        allReviewsTabContainerModelObj,
      ];
  AllReviewsTabContainerState copyWith(
      {AllReviewsTabContainerModel? allReviewsTabContainerModelObj}) {
    return AllReviewsTabContainerState(
      allReviewsTabContainerModelObj:
          allReviewsTabContainerModelObj ?? this.allReviewsTabContainerModelObj,
    );
  }
}
