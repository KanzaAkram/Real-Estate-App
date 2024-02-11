// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'layout_item_model.dart';/// This class defines the variables used in the [example_data_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExampleDataModel extends Equatable {ExampleDataModel({this.layoutItemList = const []}) {  }

List<LayoutItemModel> layoutItemList;

ExampleDataModel copyWith({List<LayoutItemModel>? layoutItemList}) { return ExampleDataModel(
layoutItemList : layoutItemList ?? this.layoutItemList,
); } 
@override List<Object?> get props => [layoutItemList];
 }
