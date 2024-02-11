import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/promotion_screen/models/promotion_model.dart';part 'promotion_event.dart';part 'promotion_state.dart';/// A bloc that manages the state of a Promotion according to the event that is dispatched to it.
class PromotionBloc extends Bloc<PromotionEvent, PromotionState> {PromotionBloc(PromotionState initialState) : super(initialState) { on<PromotionInitialEvent>(_onInitialize); }

_onInitialize(PromotionInitialEvent event, Emitter<PromotionState> emit, ) async  {  } 
 }
