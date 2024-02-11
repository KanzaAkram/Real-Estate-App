import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/add_location_screen/models/add_location_model.dart';part 'add_location_event.dart';part 'add_location_state.dart';/// A bloc that manages the state of a AddLocation according to the event that is dispatched to it.
class AddLocationBloc extends Bloc<AddLocationEvent, AddLocationState> {AddLocationBloc(AddLocationState initialState) : super(initialState) { on<AddLocationInitialEvent>(_onInitialize); }

_onInitialize(AddLocationInitialEvent event, Emitter<AddLocationState> emit, ) async  {  } 
 }
