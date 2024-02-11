// ignore_for_file: must_be_immutable

part of 'top_locations_location_detail_bloc.dart';

/// Represents the state of TopLocationsLocationDetail in the application.
class TopLocationsLocationDetailState extends Equatable {
  TopLocationsLocationDetailState({
    this.searchController,
    this.topLocationsLocationDetailModelObj,
  });

  TextEditingController? searchController;

  TopLocationsLocationDetailModel? topLocationsLocationDetailModelObj;

  @override
  List<Object?> get props => [
        searchController,
        topLocationsLocationDetailModelObj,
      ];
  TopLocationsLocationDetailState copyWith({
    TextEditingController? searchController,
    TopLocationsLocationDetailModel? topLocationsLocationDetailModelObj,
  }) {
    return TopLocationsLocationDetailState(
      searchController: searchController ?? this.searchController,
      topLocationsLocationDetailModelObj: topLocationsLocationDetailModelObj ??
          this.topLocationsLocationDetailModelObj,
    );
  }
}
