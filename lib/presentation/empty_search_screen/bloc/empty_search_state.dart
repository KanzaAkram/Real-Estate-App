// ignore_for_file: must_be_immutable

part of 'empty_search_bloc.dart';

/// Represents the state of EmptySearch in the application.
class EmptySearchState extends Equatable {
  EmptySearchState({
    this.searchController,
    this.emptySearchModelObj,
  });

  TextEditingController? searchController;

  EmptySearchModel? emptySearchModelObj;

  @override
  List<Object?> get props => [
        searchController,
        emptySearchModelObj,
      ];
  EmptySearchState copyWith({
    TextEditingController? searchController,
    EmptySearchModel? emptySearchModelObj,
  }) {
    return EmptySearchState(
      searchController: searchController ?? this.searchController,
      emptySearchModelObj: emptySearchModelObj ?? this.emptySearchModelObj,
    );
  }
}
