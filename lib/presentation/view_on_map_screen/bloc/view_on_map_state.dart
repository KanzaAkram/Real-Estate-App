// ignore_for_file: must_be_immutable

part of 'view_on_map_bloc.dart';

/// Represents the state of ViewOnMap in the application.
class ViewOnMapState extends Equatable {
  ViewOnMapState({this.viewOnMapModelObj});

  ViewOnMapModel? viewOnMapModelObj;

  @override
  List<Object?> get props => [
        viewOnMapModelObj,
      ];
  ViewOnMapState copyWith({ViewOnMapModel? viewOnMapModelObj}) {
    return ViewOnMapState(
      viewOnMapModelObj: viewOnMapModelObj ?? this.viewOnMapModelObj,
    );
  }
}
