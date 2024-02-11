// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'categorychipview_item_model.dart';import 'environmentfacilitieschipview2_item_model.dart';/// This class defines the variables used in the [filter_full_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterFullModel extends Equatable {FilterFullModel({this.categorychipviewItemList = const [], this.environmentfacilitieschipview2ItemList = const [], }) {  }

List<CategorychipviewItemModel> categorychipviewItemList;

List<Environmentfacilitieschipview2ItemModel> environmentfacilitieschipview2ItemList;

FilterFullModel copyWith({List<CategorychipviewItemModel>? categorychipviewItemList, List<Environmentfacilitieschipview2ItemModel>? environmentfacilitieschipview2ItemList, }) { return FilterFullModel(
categorychipviewItemList : categorychipviewItemList ?? this.categorychipviewItemList,
environmentfacilitieschipview2ItemList : environmentfacilitieschipview2ItemList ?? this.environmentfacilitieschipview2ItemList,
); } 
@override List<Object?> get props => [categorychipviewItemList,environmentfacilitieschipview2ItemList];
 }
