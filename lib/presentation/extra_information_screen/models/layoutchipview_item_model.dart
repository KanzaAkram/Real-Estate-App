// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [layoutchipview_item_widget] screen.
class LayoutchipviewItemModel extends Equatable {LayoutchipviewItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "Monthly";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

LayoutchipviewItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return LayoutchipviewItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
