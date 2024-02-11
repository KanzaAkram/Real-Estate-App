import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/payment_empty_page/models/payment_empty_model.dart';part 'payment_empty_event.dart';part 'payment_empty_state.dart';/// A bloc that manages the state of a PaymentEmpty according to the event that is dispatched to it.
class PaymentEmptyBloc extends Bloc<PaymentEmptyEvent, PaymentEmptyState> {PaymentEmptyBloc(PaymentEmptyState initialState) : super(initialState) { on<PaymentEmptyInitialEvent>(_onInitialize); }

_onInitialize(PaymentEmptyInitialEvent event, Emitter<PaymentEmptyState> emit, ) async  {  } 
 }
