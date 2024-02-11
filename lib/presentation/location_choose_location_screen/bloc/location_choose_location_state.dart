// ignore_for_file: must_be_immutable

part of 'location_choose_location_bloc.dart';

/// Represents the state of LocationChooseLocation in the application.
class LocationChooseLocationState extends Equatable {
  LocationChooseLocationState({this.locationChooseLocationModelObj});

  LocationChooseLocationModel? locationChooseLocationModelObj;

  @override
  List<Object?> get props => [
        locationChooseLocationModelObj,
      ];
  LocationChooseLocationState copyWith(
      {LocationChooseLocationModel? locationChooseLocationModelObj}) {
    return LocationChooseLocationState(
      locationChooseLocationModelObj:
          locationChooseLocationModelObj ?? this.locationChooseLocationModelObj,
    );
  }
}
