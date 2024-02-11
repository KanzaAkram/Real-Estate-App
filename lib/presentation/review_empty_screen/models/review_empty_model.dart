// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'cardlist_item_model.dart';/// This class defines the variables used in the [review_empty_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReviewEmptyModel extends Equatable {ReviewEmptyModel({this.cardlistItemList = const []}) {  }

List<CardlistItemModel> cardlistItemList;

ReviewEmptyModel copyWith({List<CardlistItemModel>? cardlistItemList}) { return ReviewEmptyModel(
cardlistItemList : cardlistItemList ?? this.cardlistItemList,
); } 
@override List<Object?> get props => [cardlistItemList];
 }
