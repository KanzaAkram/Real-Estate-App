// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [chipviewlayout1_item_widget] screen.
class Chipviewlayout1ItemModel extends Equatable {Chipviewlayout1ItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "Rent";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

Chipviewlayout1ItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return Chipviewlayout1ItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
