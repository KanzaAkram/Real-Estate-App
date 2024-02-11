import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/payment_empty_tab_container_screen/models/payment_empty_tab_container_model.dart';part 'payment_empty_tab_container_event.dart';part 'payment_empty_tab_container_state.dart';/// A bloc that manages the state of a PaymentEmptyTabContainer according to the event that is dispatched to it.
class PaymentEmptyTabContainerBloc extends Bloc<PaymentEmptyTabContainerEvent, PaymentEmptyTabContainerState> {PaymentEmptyTabContainerBloc(PaymentEmptyTabContainerState initialState) : super(initialState) { on<PaymentEmptyTabContainerInitialEvent>(_onInitialize); }

_onInitialize(PaymentEmptyTabContainerInitialEvent event, Emitter<PaymentEmptyTabContainerState> emit, ) async  {  } 
 }
