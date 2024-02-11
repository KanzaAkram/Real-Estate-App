// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'horizontal_item_model.dart';/// This class defines the variables used in the [horizontal_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HorizontalModel extends Equatable {HorizontalModel({this.horizontalItemList = const []}) {  }

List<HorizontalItemModel> horizontalItemList;

HorizontalModel copyWith({List<HorizontalItemModel>? horizontalItemList}) { return HorizontalModel(
horizontalItemList : horizontalItemList ?? this.horizontalItemList,
); } 
@override List<Object?> get props => [horizontalItemList];
 }
