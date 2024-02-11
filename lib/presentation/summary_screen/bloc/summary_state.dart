// ignore_for_file: must_be_immutable

part of 'summary_bloc.dart';

/// Represents the state of Summary in the application.
class SummaryState extends Equatable {
  SummaryState({this.summaryModelObj});

  SummaryModel? summaryModelObj;

  @override
  List<Object?> get props => [
        summaryModelObj,
      ];
  SummaryState copyWith({SummaryModel? summaryModelObj}) {
    return SummaryState(
      summaryModelObj: summaryModelObj ?? this.summaryModelObj,
    );
  }
}
