// ignore_for_file: must_be_immutable

part of 'form_empty_bloc.dart';

/// Represents the state of FormEmpty in the application.
class FormEmptyState extends Equatable {
  FormEmptyState({
    this.emailController,
    this.passwordController,
    this.formEmptyModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  FormEmptyModel? formEmptyModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        formEmptyModelObj,
      ];
  FormEmptyState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    FormEmptyModel? formEmptyModelObj,
  }) {
    return FormEmptyState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      formEmptyModelObj: formEmptyModelObj ?? this.formEmptyModelObj,
    );
  }
}
