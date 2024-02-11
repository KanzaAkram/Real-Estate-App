// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'listings_item_model.dart';/// This class defines the variables used in the [listings_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ListingsModel extends Equatable {ListingsModel({this.listingsItemList = const []}) {  }

List<ListingsItemModel> listingsItemList;

ListingsModel copyWith({List<ListingsItemModel>? listingsItemList}) { return ListingsModel(
listingsItemList : listingsItemList ?? this.listingsItemList,
); } 
@override List<Object?> get props => [listingsItemList];
 }
