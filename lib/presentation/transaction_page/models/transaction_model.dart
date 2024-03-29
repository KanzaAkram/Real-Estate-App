// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'transaction_item_model.dart';/// This class defines the variables used in the [transaction_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TransactionModel extends Equatable {TransactionModel({this.transactionItemList = const []}) {  }

List<TransactionItemModel> transactionItemList;

TransactionModel copyWith({List<TransactionItemModel>? transactionItemList}) { return TransactionModel(
transactionItemList : transactionItemList ?? this.transactionItemList,
); } 
@override List<Object?> get props => [transactionItemList];
 }
