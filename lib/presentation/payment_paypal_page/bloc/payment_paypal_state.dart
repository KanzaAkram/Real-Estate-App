// ignore_for_file: must_be_immutable

part of 'payment_paypal_bloc.dart';

/// Represents the state of PaymentPaypal in the application.
class PaymentPaypalState extends Equatable {
  PaymentPaypalState({
    this.lockController,
    this.emailController,
    this.paymentPaypalModelObj,
  });

  TextEditingController? lockController;

  TextEditingController? emailController;

  PaymentPaypalModel? paymentPaypalModelObj;

  @override
  List<Object?> get props => [
        lockController,
        emailController,
        paymentPaypalModelObj,
      ];
  PaymentPaypalState copyWith({
    TextEditingController? lockController,
    TextEditingController? emailController,
    PaymentPaypalModel? paymentPaypalModelObj,
  }) {
    return PaymentPaypalState(
      lockController: lockController ?? this.lockController,
      emailController: emailController ?? this.emailController,
      paymentPaypalModelObj:
          paymentPaypalModelObj ?? this.paymentPaypalModelObj,
    );
  }
}
