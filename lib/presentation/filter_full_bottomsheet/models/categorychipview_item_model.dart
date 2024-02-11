// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [categorychipview_item_widget] screen.
class CategorychipviewItemModel extends Equatable {CategorychipviewItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "Rent";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

CategorychipviewItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return CategorychipviewItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
