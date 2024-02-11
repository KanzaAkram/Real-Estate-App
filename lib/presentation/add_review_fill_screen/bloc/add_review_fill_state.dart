// ignore_for_file: must_be_immutable

part of 'add_review_fill_bloc.dart';

/// Represents the state of AddReviewFill in the application.
class AddReviewFillState extends Equatable {
  AddReviewFillState({
    this.formTextareaController,
    this.addReviewFillModelObj,
  });

  TextEditingController? formTextareaController;

  AddReviewFillModel? addReviewFillModelObj;

  @override
  List<Object?> get props => [
        formTextareaController,
        addReviewFillModelObj,
      ];
  AddReviewFillState copyWith({
    TextEditingController? formTextareaController,
    AddReviewFillModel? addReviewFillModelObj,
  }) {
    return AddReviewFillState(
      formTextareaController:
          formTextareaController ?? this.formTextareaController,
      addReviewFillModelObj:
          addReviewFillModelObj ?? this.addReviewFillModelObj,
    );
  }
}
