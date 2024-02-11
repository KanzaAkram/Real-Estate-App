import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kanza_s_application1/presentation/extra_information_error_bottomsheet/models/extra_information_error_model.dart';
part 'extra_information_error_event.dart';
part 'extra_information_error_state.dart';

/// A bloc that manages the state of a ExtraInformationError according to the event that is dispatched to it.
class ExtraInformationErrorBloc
    extends Bloc<ExtraInformationErrorEvent, ExtraInformationErrorState> {
  ExtraInformationErrorBloc(ExtraInformationErrorState initialState)
      : super(initialState) {
    on<ExtraInformationErrorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExtraInformationErrorInitialEvent event,
    Emitter<ExtraInformationErrorState> emit,
  ) async {}
}
