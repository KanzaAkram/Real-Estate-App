// ignore_for_file: must_be_immutable

part of 'payment_mastercard_bloc.dart';

/// Represents the state of PaymentMastercard in the application.
class PaymentMastercardState extends Equatable {
  PaymentMastercardState({
    this.lockController,
    this.cvvController,
    this.paymentMastercardModelObj,
  });

  TextEditingController? lockController;

  TextEditingController? cvvController;

  PaymentMastercardModel? paymentMastercardModelObj;

  @override
  List<Object?> get props => [
        lockController,
        cvvController,
        paymentMastercardModelObj,
      ];
  PaymentMastercardState copyWith({
    TextEditingController? lockController,
    TextEditingController? cvvController,
    PaymentMastercardModel? paymentMastercardModelObj,
  }) {
    return PaymentMastercardState(
      lockController: lockController ?? this.lockController,
      cvvController: cvvController ?? this.cvvController,
      paymentMastercardModelObj:
          paymentMastercardModelObj ?? this.paymentMastercardModelObj,
    );
  }
}
