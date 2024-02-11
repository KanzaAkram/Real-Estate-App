// ignore_for_file: must_be_immutable

part of 'transaction_tab_container_bloc.dart';

/// Represents the state of TransactionTabContainer in the application.
class TransactionTabContainerState extends Equatable {
  TransactionTabContainerState({this.transactionTabContainerModelObj});

  TransactionTabContainerModel? transactionTabContainerModelObj;

  @override
  List<Object?> get props => [
        transactionTabContainerModelObj,
      ];
  TransactionTabContainerState copyWith(
      {TransactionTabContainerModel? transactionTabContainerModelObj}) {
    return TransactionTabContainerState(
      transactionTabContainerModelObj: transactionTabContainerModelObj ??
          this.transactionTabContainerModelObj,
    );
  }
}
