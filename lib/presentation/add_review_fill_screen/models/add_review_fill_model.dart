// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'addreviewfill_item_model.dart';/// This class defines the variables used in the [add_review_fill_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddReviewFillModel extends Equatable {AddReviewFillModel({this.addreviewfillItemList = const []}) {  }

List<AddreviewfillItemModel> addreviewfillItemList;

AddReviewFillModel copyWith({List<AddreviewfillItemModel>? addreviewfillItemList}) { return AddReviewFillModel(
addreviewfillItemList : addreviewfillItemList ?? this.addreviewfillItemList,
); } 
@override List<Object?> get props => [addreviewfillItemList];
 }
