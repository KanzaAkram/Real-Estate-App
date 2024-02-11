// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [filter_item_widget] screen.
class FilterItemModel extends Equatable {FilterItemModel({this.buttonFilter, this.isSelected, }) { buttonFilter = buttonFilter  ?? "House";isSelected = isSelected  ?? false; }

String? buttonFilter;

bool? isSelected;

FilterItemModel copyWith({String? buttonFilter, bool? isSelected, }) { return FilterItemModel(
buttonFilter : buttonFilter ?? this.buttonFilter,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonFilter,isSelected];
 }
