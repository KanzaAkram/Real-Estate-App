import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/add_review_empty_screen/models/add_review_empty_model.dart';part 'add_review_empty_event.dart';part 'add_review_empty_state.dart';/// A bloc that manages the state of a AddReviewEmpty according to the event that is dispatched to it.
class AddReviewEmptyBloc extends Bloc<AddReviewEmptyEvent, AddReviewEmptyState> {AddReviewEmptyBloc(AddReviewEmptyState initialState) : super(initialState) { on<AddReviewEmptyInitialEvent>(_onInitialize); }

_onInitialize(AddReviewEmptyInitialEvent event, Emitter<AddReviewEmptyState> emit, ) async  { emit(state.copyWith(formTextareaController: TextEditingController())); } 
 }
