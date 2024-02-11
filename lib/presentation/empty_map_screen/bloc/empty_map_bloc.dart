import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kanza_s_application1/presentation/empty_map_screen/models/empty_map_model.dart';
part 'empty_map_event.dart';
part 'empty_map_state.dart';

/// A bloc that manages the state of a EmptyMap according to the event that is dispatched to it.
class EmptyMapBloc extends Bloc<EmptyMapEvent, EmptyMapState> {
  EmptyMapBloc(EmptyMapState initialState) : super(initialState) {
    on<EmptyMapInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EmptyMapInitialEvent event,
    Emitter<EmptyMapState> emit,
  ) async {}
}
