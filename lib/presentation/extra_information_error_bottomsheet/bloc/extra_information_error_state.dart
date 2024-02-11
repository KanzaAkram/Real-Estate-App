// ignore_for_file: must_be_immutable

part of 'extra_information_error_bloc.dart';

/// Represents the state of ExtraInformationError in the application.
class ExtraInformationErrorState extends Equatable {
  ExtraInformationErrorState({this.extraInformationErrorModelObj});

  ExtraInformationErrorModel? extraInformationErrorModelObj;

  @override
  List<Object?> get props => [
        extraInformationErrorModelObj,
      ];
  ExtraInformationErrorState copyWith(
      {ExtraInformationErrorModel? extraInformationErrorModelObj}) {
    return ExtraInformationErrorState(
      extraInformationErrorModelObj:
          extraInformationErrorModelObj ?? this.extraInformationErrorModelObj,
    );
  }
}
