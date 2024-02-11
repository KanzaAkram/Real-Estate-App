// ignore_for_file: must_be_immutable

part of 'payment_mastercard_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentMastercard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentMastercardEvent extends Equatable {}

/// Event that is dispatched when the PaymentMastercard widget is first created.
class PaymentMastercardInitialEvent extends PaymentMastercardEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing date
class ChangeDateEvent extends PaymentMastercardEvent {
  ChangeDateEvent({required this.date});

  String date;

  @override
  List<Object?> get props => [
        date,
      ];
}
