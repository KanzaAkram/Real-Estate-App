import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/payment_mastercard_page/models/payment_mastercard_model.dart';part 'payment_mastercard_event.dart';part 'payment_mastercard_state.dart';/// A bloc that manages the state of a PaymentMastercard according to the event that is dispatched to it.
class PaymentMastercardBloc extends Bloc<PaymentMastercardEvent, PaymentMastercardState> {PaymentMastercardBloc(PaymentMastercardState initialState) : super(initialState) { on<PaymentMastercardInitialEvent>(_onInitialize);on<ChangeDateEvent>(_changeDate);on<ChangeDateEvent>(_changeDate); }

_onInitialize(PaymentMastercardInitialEvent event, Emitter<PaymentMastercardState> emit, ) async  { emit(state.copyWith(lockController: TextEditingController(), cvvController: TextEditingController())); } 
_changeDate(ChangeDateEvent event, Emitter<PaymentMastercardState> emit, ) { emit(state.copyWith(
paymentMastercardModelObj: state.paymentMastercardModelObj?.copyWith(
date: event.date,
))); } 
 }
