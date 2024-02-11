// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'featuredestates_item_model.dart';/// This class defines the variables used in the [featured_estates_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FeaturedEstatesModel extends Equatable {FeaturedEstatesModel({this.featuredestatesItemList = const []}) {  }

List<FeaturedestatesItemModel> featuredestatesItemList;

FeaturedEstatesModel copyWith({List<FeaturedestatesItemModel>? featuredestatesItemList}) { return FeaturedEstatesModel(
featuredestatesItemList : featuredestatesItemList ?? this.featuredestatesItemList,
); } 
@override List<Object?> get props => [featuredestatesItemList];
 }
