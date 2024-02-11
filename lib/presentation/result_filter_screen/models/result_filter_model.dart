// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'filter_item_model.dart';import '../../../core/app_export.dart';import 'layout1_item_model.dart';/// This class defines the variables used in the [result_filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ResultFilterModel extends Equatable {ResultFilterModel({this.filterItemList = const [], this.layout1ItemList = const [], }) {  }

List<FilterItemModel> filterItemList;

List<Layout1ItemModel> layout1ItemList;

ResultFilterModel copyWith({List<FilterItemModel>? filterItemList, List<Layout1ItemModel>? layout1ItemList, }) { return ResultFilterModel(
filterItemList : filterItemList ?? this.filterItemList,
layout1ItemList : layout1ItemList ?? this.layout1ItemList,
); } 
@override List<Object?> get props => [filterItemList,layout1ItemList];
 }
