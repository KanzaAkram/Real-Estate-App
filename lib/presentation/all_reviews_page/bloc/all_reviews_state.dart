// ignore_for_file: must_be_immutable

part of 'all_reviews_bloc.dart';

/// Represents the state of AllReviews in the application.
class AllReviewsState extends Equatable {
  AllReviewsState({this.allReviewsModelObj});

  AllReviewsModel? allReviewsModelObj;

  @override
  List<Object?> get props => [
        allReviewsModelObj,
      ];
  AllReviewsState copyWith({AllReviewsModel? allReviewsModelObj}) {
    return AllReviewsState(
      allReviewsModelObj: allReviewsModelObj ?? this.allReviewsModelObj,
    );
  }
}
