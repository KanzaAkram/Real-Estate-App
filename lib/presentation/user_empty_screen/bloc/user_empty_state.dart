// ignore_for_file: must_be_immutable

part of 'user_empty_bloc.dart';

/// Represents the state of UserEmpty in the application.
class UserEmptyState extends Equatable {
  UserEmptyState({
    this.lockController,
    this.mobileNumberController,
    this.emailController,
    this.userEmptyModelObj,
  });

  TextEditingController? lockController;

  TextEditingController? mobileNumberController;

  TextEditingController? emailController;

  UserEmptyModel? userEmptyModelObj;

  @override
  List<Object?> get props => [
        lockController,
        mobileNumberController,
        emailController,
        userEmptyModelObj,
      ];
  UserEmptyState copyWith({
    TextEditingController? lockController,
    TextEditingController? mobileNumberController,
    TextEditingController? emailController,
    UserEmptyModel? userEmptyModelObj,
  }) {
    return UserEmptyState(
      lockController: lockController ?? this.lockController,
      mobileNumberController:
          mobileNumberController ?? this.mobileNumberController,
      emailController: emailController ?? this.emailController,
      userEmptyModelObj: userEmptyModelObj ?? this.userEmptyModelObj,
    );
  }
}
