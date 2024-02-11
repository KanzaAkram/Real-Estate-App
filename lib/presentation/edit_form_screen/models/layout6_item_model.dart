// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [layout6_item_widget] screen.
class Layout6ItemModel extends Equatable {Layout6ItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "Monthly";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

Layout6ItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return Layout6ItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
