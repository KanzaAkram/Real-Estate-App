// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'locationlist_item_model.dart';/// This class defines the variables used in the [location_distance_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class LocationDistanceModel extends Equatable {LocationDistanceModel({this.locationlistItemList = const []}) {  }

List<LocationlistItemModel> locationlistItemList;

LocationDistanceModel copyWith({List<LocationlistItemModel>? locationlistItemList}) { return LocationDistanceModel(
locationlistItemList : locationlistItemList ?? this.locationlistItemList,
); } 
@override List<Object?> get props => [locationlistItemList];
 }
