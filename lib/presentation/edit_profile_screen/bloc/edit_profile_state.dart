// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

/// Represents the state of EditProfile in the application.
class EditProfileState extends Equatable {
  EditProfileState({
    this.lockEditTextController,
    this.settingsEditTextController,
    this.emailEditTextController,
    this.editProfileModelObj,
  });

  TextEditingController? lockEditTextController;

  TextEditingController? settingsEditTextController;

  TextEditingController? emailEditTextController;

  EditProfileModel? editProfileModelObj;

  @override
  List<Object?> get props => [
        lockEditTextController,
        settingsEditTextController,
        emailEditTextController,
        editProfileModelObj,
      ];
  EditProfileState copyWith({
    TextEditingController? lockEditTextController,
    TextEditingController? settingsEditTextController,
    TextEditingController? emailEditTextController,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      lockEditTextController:
          lockEditTextController ?? this.lockEditTextController,
      settingsEditTextController:
          settingsEditTextController ?? this.settingsEditTextController,
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
