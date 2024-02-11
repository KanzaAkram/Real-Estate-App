import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kanza_s_application1/presentation/delete_confirmation_bottomsheet/models/delete_confirmation_model.dart';
part 'delete_confirmation_event.dart';
part 'delete_confirmation_state.dart';

/// A bloc that manages the state of a DeleteConfirmation according to the event that is dispatched to it.
class DeleteConfirmationBloc
    extends Bloc<DeleteConfirmationEvent, DeleteConfirmationState> {
  DeleteConfirmationBloc(DeleteConfirmationState initialState)
      : super(initialState) {
    on<DeleteConfirmationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DeleteConfirmationInitialEvent event,
    Emitter<DeleteConfirmationState> emit,
  ) async {}
}
