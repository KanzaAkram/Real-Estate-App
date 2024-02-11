// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'promotionbanner_item_model.dart';import 'layout13_item_model.dart';import 'layout14_item_model.dart';import 'layout15_item_model.dart';import 'home_item_model.dart';/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {HomeModel({this.promotionbannerItemList = const [], this.layout13ItemList = const [], this.layout14ItemList = const [], this.layout15ItemList = const [], this.homeItemList = const [], }) {  }

List<PromotionbannerItemModel> promotionbannerItemList;

List<Layout13ItemModel> layout13ItemList;

List<Layout14ItemModel> layout14ItemList;

List<Layout15ItemModel> layout15ItemList;

List<HomeItemModel> homeItemList;

HomeModel copyWith({List<PromotionbannerItemModel>? promotionbannerItemList, List<Layout13ItemModel>? layout13ItemList, List<Layout14ItemModel>? layout14ItemList, List<Layout15ItemModel>? layout15ItemList, List<HomeItemModel>? homeItemList, }) { return HomeModel(
promotionbannerItemList : promotionbannerItemList ?? this.promotionbannerItemList,
layout13ItemList : layout13ItemList ?? this.layout13ItemList,
layout14ItemList : layout14ItemList ?? this.layout14ItemList,
layout15ItemList : layout15ItemList ?? this.layout15ItemList,
homeItemList : homeItemList ?? this.homeItemList,
); } 
@override List<Object?> get props => [promotionbannerItemList,layout13ItemList,layout14ItemList,layout15ItemList,homeItemList];
 }
