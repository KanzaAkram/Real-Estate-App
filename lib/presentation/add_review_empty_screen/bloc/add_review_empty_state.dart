// ignore_for_file: must_be_immutable

part of 'add_review_empty_bloc.dart';

/// Represents the state of AddReviewEmpty in the application.
class AddReviewEmptyState extends Equatable {
  AddReviewEmptyState({
    this.formTextareaController,
    this.addReviewEmptyModelObj,
  });

  TextEditingController? formTextareaController;

  AddReviewEmptyModel? addReviewEmptyModelObj;

  @override
  List<Object?> get props => [
        formTextareaController,
        addReviewEmptyModelObj,
      ];
  AddReviewEmptyState copyWith({
    TextEditingController? formTextareaController,
    AddReviewEmptyModel? addReviewEmptyModelObj,
  }) {
    return AddReviewEmptyState(
      formTextareaController:
          formTextareaController ?? this.formTextareaController,
      addReviewEmptyModelObj:
          addReviewEmptyModelObj ?? this.addReviewEmptyModelObj,
    );
  }
}
