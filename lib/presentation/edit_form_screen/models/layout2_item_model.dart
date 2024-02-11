// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [layout2_item_widget] screen.
class Layout2ItemModel extends Equatable {Layout2ItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "Rent";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

Layout2ItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return Layout2ItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
