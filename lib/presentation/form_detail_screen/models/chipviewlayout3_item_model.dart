// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [chipviewlayout3_item_widget] screen.
class Chipviewlayout3ItemModel extends Equatable {Chipviewlayout3ItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "House";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

Chipviewlayout3ItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return Chipviewlayout3ItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
