// ignore_for_file: must_be_immutable

part of 'form_detail_bloc.dart';

/// Represents the state of FormDetail in the application.
class FormDetailState extends Equatable {
  FormDetailState({
    this.formPasswordController,
    this.formDetailModelObj,
  });

  TextEditingController? formPasswordController;

  FormDetailModel? formDetailModelObj;

  @override
  List<Object?> get props => [
        formPasswordController,
        formDetailModelObj,
      ];
  FormDetailState copyWith({
    TextEditingController? formPasswordController,
    FormDetailModel? formDetailModelObj,
  }) {
    return FormDetailState(
      formPasswordController:
          formPasswordController ?? this.formPasswordController,
      formDetailModelObj: formDetailModelObj ?? this.formDetailModelObj,
    );
  }
}
