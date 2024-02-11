import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/locationlist_item_model.dart';
import 'package:kanza_s_application1/presentation/location_distance_bottomsheet/models/location_distance_model.dart';
part 'location_distance_event.dart';
part 'location_distance_state.dart';

/// A bloc that manages the state of a LocationDistance according to the event that is dispatched to it.
class LocationDistanceBloc
    extends Bloc<LocationDistanceEvent, LocationDistanceState> {
  LocationDistanceBloc(LocationDistanceState initialState)
      : super(initialState) {
    on<LocationDistanceInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LocationDistanceInitialEvent event,
    Emitter<LocationDistanceState> emit,
  ) async {
    emit(state.copyWith(
        locationDistanceModelObj: state.locationDistanceModelObj?.copyWith(
      locationlistItemList: fillLocationlistItemList(),
    )));
  }

  List<LocationlistItemModel> fillLocationlistItemList() {
    return List.generate(2, (index) => LocationlistItemModel());
  }
}
