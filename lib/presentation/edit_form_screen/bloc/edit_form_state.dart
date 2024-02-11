// ignore_for_file: must_be_immutable

part of 'edit_form_bloc.dart';

/// Represents the state of EditForm in the application.
class EditFormState extends Equatable {
  EditFormState({
    this.formPasswordController,
    this.editFormModelObj,
  });

  TextEditingController? formPasswordController;

  EditFormModel? editFormModelObj;

  @override
  List<Object?> get props => [
        formPasswordController,
        editFormModelObj,
      ];
  EditFormState copyWith({
    TextEditingController? formPasswordController,
    EditFormModel? editFormModelObj,
  }) {
    return EditFormState(
      formPasswordController:
          formPasswordController ?? this.formPasswordController,
      editFormModelObj: editFormModelObj ?? this.editFormModelObj,
    );
  }
}
