import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/view_on_map_screen/models/view_on_map_model.dart';part 'view_on_map_event.dart';part 'view_on_map_state.dart';/// A bloc that manages the state of a ViewOnMap according to the event that is dispatched to it.
class ViewOnMapBloc extends Bloc<ViewOnMapEvent, ViewOnMapState> {ViewOnMapBloc(ViewOnMapState initialState) : super(initialState) { on<ViewOnMapInitialEvent>(_onInitialize); }

_onInitialize(ViewOnMapInitialEvent event, Emitter<ViewOnMapState> emit, ) async  {  } 
 }
