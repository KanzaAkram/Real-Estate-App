// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'frameeightyone_item_model.dart';import '../../../core/app_export.dart';import 'toplocationslocationdetail_item_model.dart';/// This class defines the variables used in the [top_locations_location_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TopLocationsLocationDetailModel extends Equatable {TopLocationsLocationDetailModel({this.frameeightyoneItemList = const [], this.toplocationslocationdetailItemList = const [], }) {  }

List<FrameeightyoneItemModel> frameeightyoneItemList;

List<ToplocationslocationdetailItemModel> toplocationslocationdetailItemList;

TopLocationsLocationDetailModel copyWith({List<FrameeightyoneItemModel>? frameeightyoneItemList, List<ToplocationslocationdetailItemModel>? toplocationslocationdetailItemList, }) { return TopLocationsLocationDetailModel(
frameeightyoneItemList : frameeightyoneItemList ?? this.frameeightyoneItemList,
toplocationslocationdetailItemList : toplocationslocationdetailItemList ?? this.toplocationslocationdetailItemList,
); } 
@override List<Object?> get props => [frameeightyoneItemList,toplocationslocationdetailItemList];
 }
