import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kanza_s_application1/presentation/select_location_bottomsheet/models/select_location_model.dart';
part 'select_location_event.dart';
part 'select_location_state.dart';

/// A bloc that manages the state of a SelectLocation according to the event that is dispatched to it.
class SelectLocationBloc
    extends Bloc<SelectLocationEvent, SelectLocationState> {
  SelectLocationBloc(SelectLocationState initialState) : super(initialState) {
    on<SelectLocationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SelectLocationInitialEvent event,
    Emitter<SelectLocationState> emit,
  ) async {}
}
