// ignore_for_file: must_be_immutable

part of 'history_detail_bloc.dart';

/// Represents the state of HistoryDetail in the application.
class HistoryDetailState extends Equatable {
  HistoryDetailState({this.historyDetailModelObj});

  HistoryDetailModel? historyDetailModelObj;

  @override
  List<Object?> get props => [
        historyDetailModelObj,
      ];
  HistoryDetailState copyWith({HistoryDetailModel? historyDetailModelObj}) {
    return HistoryDetailState(
      historyDetailModelObj:
          historyDetailModelObj ?? this.historyDetailModelObj,
    );
  }
}
