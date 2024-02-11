// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'layout2_item_model.dart';import 'layout4_item_model.dart';import '../../../core/app_export.dart';import 'shape_item_model.dart';import 'layout6_item_model.dart';import 'layout8_item_model.dart';import 'layout9_item_model.dart';import 'seventy_item_model.dart';/// This class defines the variables used in the [edit_form_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EditFormModel extends Equatable {EditFormModel({this.layout2ItemList = const [], this.layout4ItemList = const [], this.shapeItemList = const [], this.layout6ItemList = const [], this.layout8ItemList = const [], this.layout9ItemList = const [], this.seventyItemList = const [], }) {  }

List<Layout2ItemModel> layout2ItemList;

List<Layout4ItemModel> layout4ItemList;

List<ShapeItemModel> shapeItemList;

List<Layout6ItemModel> layout6ItemList;

List<Layout8ItemModel> layout8ItemList;

List<Layout9ItemModel> layout9ItemList;

List<SeventyItemModel> seventyItemList;

EditFormModel copyWith({List<Layout2ItemModel>? layout2ItemList, List<Layout4ItemModel>? layout4ItemList, List<ShapeItemModel>? shapeItemList, List<Layout6ItemModel>? layout6ItemList, List<Layout8ItemModel>? layout8ItemList, List<Layout9ItemModel>? layout9ItemList, List<SeventyItemModel>? seventyItemList, }) { return EditFormModel(
layout2ItemList : layout2ItemList ?? this.layout2ItemList,
layout4ItemList : layout4ItemList ?? this.layout4ItemList,
shapeItemList : shapeItemList ?? this.shapeItemList,
layout6ItemList : layout6ItemList ?? this.layout6ItemList,
layout8ItemList : layout8ItemList ?? this.layout8ItemList,
layout9ItemList : layout9ItemList ?? this.layout9ItemList,
seventyItemList : seventyItemList ?? this.seventyItemList,
); } 
@override List<Object?> get props => [layout2ItemList,layout4ItemList,shapeItemList,layout6ItemList,layout8ItemList,layout9ItemList,seventyItemList];
 }
