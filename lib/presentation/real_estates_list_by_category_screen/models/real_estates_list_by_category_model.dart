// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'datalist_item_model.dart';import 'realestateslistbycategory_item_model.dart';/// This class defines the variables used in the [real_estates_list_by_category_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RealEstatesListByCategoryModel extends Equatable {RealEstatesListByCategoryModel({this.datalistItemList = const [], this.realestateslistbycategoryItemList = const [], }) {  }

List<DatalistItemModel> datalistItemList;

List<RealestateslistbycategoryItemModel> realestateslistbycategoryItemList;

RealEstatesListByCategoryModel copyWith({List<DatalistItemModel>? datalistItemList, List<RealestateslistbycategoryItemModel>? realestateslistbycategoryItemList, }) { return RealEstatesListByCategoryModel(
datalistItemList : datalistItemList ?? this.datalistItemList,
realestateslistbycategoryItemList : realestateslistbycategoryItemList ?? this.realestateslistbycategoryItemList,
); } 
@override List<Object?> get props => [datalistItemList,realestateslistbycategoryItemList];
 }
