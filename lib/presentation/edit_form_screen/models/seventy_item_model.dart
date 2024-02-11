// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [seventy_item_widget] screen.
class SeventyItemModel extends Equatable {SeventyItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "Parking Lot";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

SeventyItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return SeventyItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
