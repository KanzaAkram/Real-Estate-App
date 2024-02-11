import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kanza_s_application1/presentation/payment_paypal_page/models/payment_paypal_model.dart';
part 'payment_paypal_event.dart';
part 'payment_paypal_state.dart';

/// A bloc that manages the state of a PaymentPaypal according to the event that is dispatched to it.
class PaymentPaypalBloc extends Bloc<PaymentPaypalEvent, PaymentPaypalState> {
  PaymentPaypalBloc(PaymentPaypalState initialState) : super(initialState) {
    on<PaymentPaypalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentPaypalInitialEvent event,
    Emitter<PaymentPaypalState> emit,
  ) async {
    emit(state.copyWith(
      lockController: TextEditingController(),
      emailController: TextEditingController(),
    ));
  }
}
