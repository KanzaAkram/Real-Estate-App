// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'allreviews_item_model.dart';/// This class defines the variables used in the [all_reviews_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AllReviewsModel extends Equatable {AllReviewsModel({this.allreviewsItemList = const []}) {  }

List<AllreviewsItemModel> allreviewsItemList;

AllReviewsModel copyWith({List<AllreviewsItemModel>? allreviewsItemList}) { return AllReviewsModel(
allreviewsItemList : allreviewsItemList ?? this.allreviewsItemList,
); } 
@override List<Object?> get props => [allreviewsItemList];
 }
