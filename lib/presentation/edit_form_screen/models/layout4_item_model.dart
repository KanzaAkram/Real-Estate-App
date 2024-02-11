// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [layout4_item_widget] screen.
class Layout4ItemModel extends Equatable {Layout4ItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "House";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

Layout4ItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return Layout4ItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
