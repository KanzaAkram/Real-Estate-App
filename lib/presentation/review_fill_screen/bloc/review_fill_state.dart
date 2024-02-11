// ignore_for_file: must_be_immutable

part of 'review_fill_bloc.dart';

/// Represents the state of ReviewFill in the application.
class ReviewFillState extends Equatable {
  ReviewFillState({
    this.startDateEditTextController,
    this.endDateEditTextController,
    this.televisionEditTextController,
    this.reviewFillModelObj,
  });

  TextEditingController? startDateEditTextController;

  TextEditingController? endDateEditTextController;

  TextEditingController? televisionEditTextController;

  ReviewFillModel? reviewFillModelObj;

  @override
  List<Object?> get props => [
        startDateEditTextController,
        endDateEditTextController,
        televisionEditTextController,
        reviewFillModelObj,
      ];
  ReviewFillState copyWith({
    TextEditingController? startDateEditTextController,
    TextEditingController? endDateEditTextController,
    TextEditingController? televisionEditTextController,
    ReviewFillModel? reviewFillModelObj,
  }) {
    return ReviewFillState(
      startDateEditTextController:
          startDateEditTextController ?? this.startDateEditTextController,
      endDateEditTextController:
          endDateEditTextController ?? this.endDateEditTextController,
      televisionEditTextController:
          televisionEditTextController ?? this.televisionEditTextController,
      reviewFillModelObj: reviewFillModelObj ?? this.reviewFillModelObj,
    );
  }
}
