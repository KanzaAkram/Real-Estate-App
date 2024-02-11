import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/call_screen/models/call_model.dart';part 'call_event.dart';part 'call_state.dart';/// A bloc that manages the state of a Call according to the event that is dispatched to it.
class CallBloc extends Bloc<CallEvent, CallState> {CallBloc(CallState initialState) : super(initialState) { on<CallInitialEvent>(_onInitialize); }

_onInitialize(CallInitialEvent event, Emitter<CallState> emit, ) async  {  } 
 }
