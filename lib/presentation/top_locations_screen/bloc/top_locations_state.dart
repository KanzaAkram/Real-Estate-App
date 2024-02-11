// ignore_for_file: must_be_immutable

part of 'top_locations_bloc.dart';

/// Represents the state of TopLocations in the application.
class TopLocationsState extends Equatable {
  TopLocationsState({this.topLocationsModelObj});

  TopLocationsModel? topLocationsModelObj;

  @override
  List<Object?> get props => [
        topLocationsModelObj,
      ];
  TopLocationsState copyWith({TopLocationsModel? topLocationsModelObj}) {
    return TopLocationsState(
      topLocationsModelObj: topLocationsModelObj ?? this.topLocationsModelObj,
    );
  }
}
