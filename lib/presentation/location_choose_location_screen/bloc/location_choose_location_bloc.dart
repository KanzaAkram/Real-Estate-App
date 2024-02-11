import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/location_choose_location_screen/models/location_choose_location_model.dart';part 'location_choose_location_event.dart';part 'location_choose_location_state.dart';/// A bloc that manages the state of a LocationChooseLocation according to the event that is dispatched to it.
class LocationChooseLocationBloc extends Bloc<LocationChooseLocationEvent, LocationChooseLocationState> {LocationChooseLocationBloc(LocationChooseLocationState initialState) : super(initialState) { on<LocationChooseLocationInitialEvent>(_onInitialize); }

_onInitialize(LocationChooseLocationInitialEvent event, Emitter<LocationChooseLocationState> emit, ) async  { NavigatorService.pushNamed(AppRoutes.locationFillScreen, ); } 
 }
