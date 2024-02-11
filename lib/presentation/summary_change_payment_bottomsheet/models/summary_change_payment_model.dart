// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'summarychange_item_model.dart';/// This class defines the variables used in the [summary_change_payment_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SummaryChangePaymentModel extends Equatable {SummaryChangePaymentModel({this.summarychangeItemList = const []}) {  }

List<SummarychangeItemModel> summarychangeItemList;

SummaryChangePaymentModel copyWith({List<SummarychangeItemModel>? summarychangeItemList}) { return SummaryChangePaymentModel(
summarychangeItemList : summarychangeItemList ?? this.summarychangeItemList,
); } 
@override List<Object?> get props => [summarychangeItemList];
 }
