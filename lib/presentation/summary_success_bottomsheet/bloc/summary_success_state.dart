// ignore_for_file: must_be_immutable

part of 'summary_success_bloc.dart';

/// Represents the state of SummarySuccess in the application.
class SummarySuccessState extends Equatable {
  SummarySuccessState({this.summarySuccessModelObj});

  SummarySuccessModel? summarySuccessModelObj;

  @override
  List<Object?> get props => [
        summarySuccessModelObj,
      ];
  SummarySuccessState copyWith({SummarySuccessModel? summarySuccessModelObj}) {
    return SummarySuccessState(
      summarySuccessModelObj:
          summarySuccessModelObj ?? this.summarySuccessModelObj,
    );
  }
}
