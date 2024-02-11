// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userreviewslist_item_model.dart';/// This class defines the variables used in the [reviews_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ReviewsModel extends Equatable {ReviewsModel({this.userreviewslistItemList = const []}) {  }

List<UserreviewslistItemModel> userreviewslistItemList;

ReviewsModel copyWith({List<UserreviewslistItemModel>? userreviewslistItemList}) { return ReviewsModel(
userreviewslistItemList : userreviewslistItemList ?? this.userreviewslistItemList,
); } 
@override List<Object?> get props => [userreviewslistItemList];
 }
