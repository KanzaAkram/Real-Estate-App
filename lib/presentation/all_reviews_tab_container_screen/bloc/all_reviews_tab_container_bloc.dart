import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/all_reviews_tab_container_screen/models/all_reviews_tab_container_model.dart';part 'all_reviews_tab_container_event.dart';part 'all_reviews_tab_container_state.dart';/// A bloc that manages the state of a AllReviewsTabContainer according to the event that is dispatched to it.
class AllReviewsTabContainerBloc extends Bloc<AllReviewsTabContainerEvent, AllReviewsTabContainerState> {AllReviewsTabContainerBloc(AllReviewsTabContainerState initialState) : super(initialState) { on<AllReviewsTabContainerInitialEvent>(_onInitialize); }

_onInitialize(AllReviewsTabContainerInitialEvent event, Emitter<AllReviewsTabContainerState> emit, ) async  {  } 
 }
