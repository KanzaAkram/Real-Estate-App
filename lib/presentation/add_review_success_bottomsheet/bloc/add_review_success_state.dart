// ignore_for_file: must_be_immutable

part of 'add_review_success_bloc.dart';

/// Represents the state of AddReviewSuccess in the application.
class AddReviewSuccessState extends Equatable {
  AddReviewSuccessState({this.addReviewSuccessModelObj});

  AddReviewSuccessModel? addReviewSuccessModelObj;

  @override
  List<Object?> get props => [
        addReviewSuccessModelObj,
      ];
  AddReviewSuccessState copyWith(
      {AddReviewSuccessModel? addReviewSuccessModelObj}) {
    return AddReviewSuccessState(
      addReviewSuccessModelObj:
          addReviewSuccessModelObj ?? this.addReviewSuccessModelObj,
    );
  }
}
