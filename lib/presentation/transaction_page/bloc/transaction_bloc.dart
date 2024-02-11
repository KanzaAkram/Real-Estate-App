import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/transaction_item_model.dart';
import 'package:kanza_s_application1/presentation/transaction_page/models/transaction_model.dart';
part 'transaction_event.dart';
part 'transaction_state.dart';

/// A bloc that manages the state of a Transaction according to the event that is dispatched to it.
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc(TransactionState initialState) : super(initialState) {
    on<TransactionInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TransactionInitialEvent event,
    Emitter<TransactionState> emit,
  ) async {
    emit(state.copyWith(
        transactionModelObj: state.transactionModelObj?.copyWith(
      transactionItemList: fillTransactionItemList(),
    )));
  }

  List<TransactionItemModel> fillTransactionItemList() {
    return [
      TransactionItemModel(
          wingsTower: ImageConstant.imgShape17,
          wingsTower1: "Wings Tower",
          date: "November 21,2021"),
      TransactionItemModel(
          wingsTower: ImageConstant.imgShape33,
          wingsTower1: "Bridgeland Modern ",
          date: "December")
    ];
  }
}
