import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/view_screen/models/view_model.dart';part 'view_event.dart';part 'view_state.dart';/// A bloc that manages the state of a View according to the event that is dispatched to it.
class ViewBloc extends Bloc<ViewEvent, ViewState> {ViewBloc(ViewState initialState) : super(initialState) { on<ViewInitialEvent>(_onInitialize); }

_onInitialize(ViewInitialEvent event, Emitter<ViewState> emit, ) async  {  } 
 }
