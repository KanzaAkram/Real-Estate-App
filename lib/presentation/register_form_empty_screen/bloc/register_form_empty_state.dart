// ignore_for_file: must_be_immutable

part of 'register_form_empty_bloc.dart';

/// Represents the state of RegisterFormEmpty in the application.
class RegisterFormEmptyState extends Equatable {
  RegisterFormEmptyState({
    this.fullNameController,
    this.emailController,
    this.passwordController,
    this.registerFormEmptyModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  RegisterFormEmptyModel? registerFormEmptyModelObj;

  @override
  List<Object?> get props => [
        fullNameController,
        emailController,
        passwordController,
        registerFormEmptyModelObj,
      ];
  RegisterFormEmptyState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    RegisterFormEmptyModel? registerFormEmptyModelObj,
  }) {
    return RegisterFormEmptyState(
      fullNameController: fullNameController ?? this.fullNameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      registerFormEmptyModelObj:
          registerFormEmptyModelObj ?? this.registerFormEmptyModelObj,
    );
  }
}
