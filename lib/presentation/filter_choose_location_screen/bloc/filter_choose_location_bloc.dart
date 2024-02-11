import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/filter_choose_location_screen/models/filter_choose_location_model.dart';part 'filter_choose_location_event.dart';part 'filter_choose_location_state.dart';/// A bloc that manages the state of a FilterChooseLocation according to the event that is dispatched to it.
class FilterChooseLocationBloc extends Bloc<FilterChooseLocationEvent, FilterChooseLocationState> {FilterChooseLocationBloc(FilterChooseLocationState initialState) : super(initialState) { on<FilterChooseLocationInitialEvent>(_onInitialize); }

_onInitialize(FilterChooseLocationInitialEvent event, Emitter<FilterChooseLocationState> emit, ) async  { NavigatorService.pushNamed(AppRoutes.resultFilterScreen, ); } 
 }
