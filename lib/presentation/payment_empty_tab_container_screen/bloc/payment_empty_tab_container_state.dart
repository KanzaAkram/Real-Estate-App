// ignore_for_file: must_be_immutable

part of 'payment_empty_tab_container_bloc.dart';

/// Represents the state of PaymentEmptyTabContainer in the application.
class PaymentEmptyTabContainerState extends Equatable {
  PaymentEmptyTabContainerState({this.paymentEmptyTabContainerModelObj});

  PaymentEmptyTabContainerModel? paymentEmptyTabContainerModelObj;

  @override
  List<Object?> get props => [
        paymentEmptyTabContainerModelObj,
      ];
  PaymentEmptyTabContainerState copyWith(
      {PaymentEmptyTabContainerModel? paymentEmptyTabContainerModelObj}) {
    return PaymentEmptyTabContainerState(
      paymentEmptyTabContainerModelObj: paymentEmptyTabContainerModelObj ??
          this.paymentEmptyTabContainerModelObj,
    );
  }
}
