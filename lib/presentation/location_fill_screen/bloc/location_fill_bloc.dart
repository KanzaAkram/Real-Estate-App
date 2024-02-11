import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/location_fill_screen/models/location_fill_model.dart';part 'location_fill_event.dart';part 'location_fill_state.dart';/// A bloc that manages the state of a LocationFill according to the event that is dispatched to it.
class LocationFillBloc extends Bloc<LocationFillEvent, LocationFillState> {LocationFillBloc(LocationFillState initialState) : super(initialState) { on<LocationFillInitialEvent>(_onInitialize); }

_onInitialize(LocationFillInitialEvent event, Emitter<LocationFillState> emit, ) async  {  } 
 }
