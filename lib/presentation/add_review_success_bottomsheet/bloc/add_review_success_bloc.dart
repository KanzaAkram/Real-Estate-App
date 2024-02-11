import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kanza_s_application1/presentation/add_review_success_bottomsheet/models/add_review_success_model.dart';
part 'add_review_success_event.dart';
part 'add_review_success_state.dart';

/// A bloc that manages the state of a AddReviewSuccess according to the event that is dispatched to it.
class AddReviewSuccessBloc
    extends Bloc<AddReviewSuccessEvent, AddReviewSuccessState> {
  AddReviewSuccessBloc(AddReviewSuccessState initialState)
      : super(initialState) {
    on<AddReviewSuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddReviewSuccessInitialEvent event,
    Emitter<AddReviewSuccessState> emit,
  ) async {}
}
