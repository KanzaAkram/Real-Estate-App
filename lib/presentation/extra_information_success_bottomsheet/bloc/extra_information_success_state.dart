// ignore_for_file: must_be_immutable

part of 'extra_information_success_bloc.dart';

/// Represents the state of ExtraInformationSuccess in the application.
class ExtraInformationSuccessState extends Equatable {
  ExtraInformationSuccessState({this.extraInformationSuccessModelObj});

  ExtraInformationSuccessModel? extraInformationSuccessModelObj;

  @override
  List<Object?> get props => [
        extraInformationSuccessModelObj,
      ];
  ExtraInformationSuccessState copyWith(
      {ExtraInformationSuccessModel? extraInformationSuccessModelObj}) {
    return ExtraInformationSuccessState(
      extraInformationSuccessModelObj: extraInformationSuccessModelObj ??
          this.extraInformationSuccessModelObj,
    );
  }
}
