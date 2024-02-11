// ignore_for_file: must_be_immutable

part of 'filter_choose_location_bloc.dart';

/// Represents the state of FilterChooseLocation in the application.
class FilterChooseLocationState extends Equatable {
  FilterChooseLocationState({this.filterChooseLocationModelObj});

  FilterChooseLocationModel? filterChooseLocationModelObj;

  @override
  List<Object?> get props => [
        filterChooseLocationModelObj,
      ];
  FilterChooseLocationState copyWith(
      {FilterChooseLocationModel? filterChooseLocationModelObj}) {
    return FilterChooseLocationState(
      filterChooseLocationModelObj:
          filterChooseLocationModelObj ?? this.filterChooseLocationModelObj,
    );
  }
}
