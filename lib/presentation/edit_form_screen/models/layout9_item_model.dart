// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [layout9_item_widget] screen.
class Layout9ItemModel extends Equatable {Layout9ItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "< 4";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

Layout9ItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return Layout9ItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
