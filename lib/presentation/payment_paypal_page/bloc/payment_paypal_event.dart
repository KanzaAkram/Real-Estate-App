// ignore_for_file: must_be_immutable

part of 'payment_paypal_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentPaypal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentPaypalEvent extends Equatable {}

/// Event that is dispatched when the PaymentPaypal widget is first created.
class PaymentPaypalInitialEvent extends PaymentPaypalEvent {
  @override
  List<Object?> get props => [];
}
