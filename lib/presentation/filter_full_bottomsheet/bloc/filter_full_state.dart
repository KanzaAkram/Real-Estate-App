// ignore_for_file: must_be_immutable

part of 'filter_full_bloc.dart';

/// Represents the state of FilterFull in the application.
class FilterFullState extends Equatable {
  FilterFullState({
    this.searchController,
    this.priceController,
    this.formValueController,
    this.filterFullModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? priceController;

  TextEditingController? formValueController;

  FilterFullModel? filterFullModelObj;

  @override
  List<Object?> get props => [
        searchController,
        priceController,
        formValueController,
        filterFullModelObj,
      ];
  FilterFullState copyWith({
    TextEditingController? searchController,
    TextEditingController? priceController,
    TextEditingController? formValueController,
    FilterFullModel? filterFullModelObj,
  }) {
    return FilterFullState(
      searchController: searchController ?? this.searchController,
      priceController: priceController ?? this.priceController,
      formValueController: formValueController ?? this.formValueController,
      filterFullModelObj: filterFullModelObj ?? this.filterFullModelObj,
    );
  }
}
