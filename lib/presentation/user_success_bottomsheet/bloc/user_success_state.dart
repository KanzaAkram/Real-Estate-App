// ignore_for_file: must_be_immutable

part of 'user_success_bloc.dart';

/// Represents the state of UserSuccess in the application.
class UserSuccessState extends Equatable {
  UserSuccessState({this.userSuccessModelObj});

  UserSuccessModel? userSuccessModelObj;

  @override
  List<Object?> get props => [
        userSuccessModelObj,
      ];
  UserSuccessState copyWith({UserSuccessModel? userSuccessModelObj}) {
    return UserSuccessState(
      userSuccessModelObj: userSuccessModelObj ?? this.userSuccessModelObj,
    );
  }
}
