import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kanza_s_application1/presentation/summary_success_bottomsheet/models/summary_success_model.dart';
part 'summary_success_event.dart';
part 'summary_success_state.dart';

/// A bloc that manages the state of a SummarySuccess according to the event that is dispatched to it.
class SummarySuccessBloc
    extends Bloc<SummarySuccessEvent, SummarySuccessState> {
  SummarySuccessBloc(SummarySuccessState initialState) : super(initialState) {
    on<SummarySuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SummarySuccessInitialEvent event,
    Emitter<SummarySuccessState> emit,
  ) async {}
}
