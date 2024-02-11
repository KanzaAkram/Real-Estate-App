// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'paymentmethodlist_item_model.dart';/// This class defines the variables used in the [review_fill_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReviewFillModel extends Equatable {ReviewFillModel({this.paymentmethodlistItemList = const []}) {  }

List<PaymentmethodlistItemModel> paymentmethodlistItemList;

ReviewFillModel copyWith({List<PaymentmethodlistItemModel>? paymentmethodlistItemList}) { return ReviewFillModel(
paymentmethodlistItemList : paymentmethodlistItemList ?? this.paymentmethodlistItemList,
); } 
@override List<Object?> get props => [paymentmethodlistItemList];
 }
