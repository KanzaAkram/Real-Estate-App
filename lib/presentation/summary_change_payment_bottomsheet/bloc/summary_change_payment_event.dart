// ignore_for_file: must_be_immutable

part of 'summary_change_payment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SummaryChangePayment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SummaryChangePaymentEvent extends Equatable {}

/// Event that is dispatched when the SummaryChangePayment widget is first created.
class SummaryChangePaymentInitialEvent extends SummaryChangePaymentEvent {
  @override
  List<Object?> get props => [];
}
