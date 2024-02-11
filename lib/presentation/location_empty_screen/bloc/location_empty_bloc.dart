import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/location_empty_screen/models/location_empty_model.dart';part 'location_empty_event.dart';part 'location_empty_state.dart';/// A bloc that manages the state of a LocationEmpty according to the event that is dispatched to it.
class LocationEmptyBloc extends Bloc<LocationEmptyEvent, LocationEmptyState> {LocationEmptyBloc(LocationEmptyState initialState) : super(initialState) { on<LocationEmptyInitialEvent>(_onInitialize); }

_onInitialize(LocationEmptyInitialEvent event, Emitter<LocationEmptyState> emit, ) async  {  } 
 }
