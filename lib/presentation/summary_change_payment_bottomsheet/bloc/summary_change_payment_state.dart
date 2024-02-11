// ignore_for_file: must_be_immutable

part of 'summary_change_payment_bloc.dart';

/// Represents the state of SummaryChangePayment in the application.
class SummaryChangePaymentState extends Equatable {
  SummaryChangePaymentState({this.summaryChangePaymentModelObj});

  SummaryChangePaymentModel? summaryChangePaymentModelObj;

  @override
  List<Object?> get props => [
        summaryChangePaymentModelObj,
      ];
  SummaryChangePaymentState copyWith(
      {SummaryChangePaymentModel? summaryChangePaymentModelObj}) {
    return SummaryChangePaymentState(
      summaryChangePaymentModelObj:
          summaryChangePaymentModelObj ?? this.summaryChangePaymentModelObj,
    );
  }
}
