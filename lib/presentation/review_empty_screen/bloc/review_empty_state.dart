// ignore_for_file: must_be_immutable

part of 'review_empty_bloc.dart';

/// Represents the state of ReviewEmpty in the application.
class ReviewEmptyState extends Equatable {
  ReviewEmptyState({
    this.formDateEmptyController,
    this.formDateEmptyController1,
    this.televisionController,
    this.reviewEmptyModelObj,
  });

  TextEditingController? formDateEmptyController;

  TextEditingController? formDateEmptyController1;

  TextEditingController? televisionController;

  ReviewEmptyModel? reviewEmptyModelObj;

  @override
  List<Object?> get props => [
        formDateEmptyController,
        formDateEmptyController1,
        televisionController,
        reviewEmptyModelObj,
      ];
  ReviewEmptyState copyWith({
    TextEditingController? formDateEmptyController,
    TextEditingController? formDateEmptyController1,
    TextEditingController? televisionController,
    ReviewEmptyModel? reviewEmptyModelObj,
  }) {
    return ReviewEmptyState(
      formDateEmptyController:
          formDateEmptyController ?? this.formDateEmptyController,
      formDateEmptyController1:
          formDateEmptyController1 ?? this.formDateEmptyController1,
      televisionController: televisionController ?? this.televisionController,
      reviewEmptyModelObj: reviewEmptyModelObj ?? this.reviewEmptyModelObj,
    );
  }
}
