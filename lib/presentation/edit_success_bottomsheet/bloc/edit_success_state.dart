// ignore_for_file: must_be_immutable

part of 'edit_success_bloc.dart';

/// Represents the state of EditSuccess in the application.
class EditSuccessState extends Equatable {
  EditSuccessState({this.editSuccessModelObj});

  EditSuccessModel? editSuccessModelObj;

  @override
  List<Object?> get props => [
        editSuccessModelObj,
      ];
  EditSuccessState copyWith({EditSuccessModel? editSuccessModelObj}) {
    return EditSuccessState(
      editSuccessModelObj: editSuccessModelObj ?? this.editSuccessModelObj,
    );
  }
}
