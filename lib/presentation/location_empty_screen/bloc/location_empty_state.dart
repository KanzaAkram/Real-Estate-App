// ignore_for_file: must_be_immutable

part of 'location_empty_bloc.dart';

/// Represents the state of LocationEmpty in the application.
class LocationEmptyState extends Equatable {
  LocationEmptyState({this.locationEmptyModelObj});

  LocationEmptyModel? locationEmptyModelObj;

  @override
  List<Object?> get props => [
        locationEmptyModelObj,
      ];
  LocationEmptyState copyWith({LocationEmptyModel? locationEmptyModelObj}) {
    return LocationEmptyState(
      locationEmptyModelObj:
          locationEmptyModelObj ?? this.locationEmptyModelObj,
    );
  }
}
