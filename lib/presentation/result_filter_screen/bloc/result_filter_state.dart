// ignore_for_file: must_be_immutable

part of 'result_filter_bloc.dart';

/// Represents the state of ResultFilter in the application.
class ResultFilterState extends Equatable {
  ResultFilterState({
    this.searchController,
    this.resultFilterModelObj,
  });

  TextEditingController? searchController;

  ResultFilterModel? resultFilterModelObj;

  @override
  List<Object?> get props => [
        searchController,
        resultFilterModelObj,
      ];
  ResultFilterState copyWith({
    TextEditingController? searchController,
    ResultFilterModel? resultFilterModelObj,
  }) {
    return ResultFilterState(
      searchController: searchController ?? this.searchController,
      resultFilterModelObj: resultFilterModelObj ?? this.resultFilterModelObj,
    );
  }
}
