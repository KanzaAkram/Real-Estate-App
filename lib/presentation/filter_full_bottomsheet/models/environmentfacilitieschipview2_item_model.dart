// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [environmentfacilitieschipview2_item_widget] screen.
class Environmentfacilitieschipview2ItemModel extends Equatable {Environmentfacilitieschipview2ItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "Home theatre";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

Environmentfacilitieschipview2ItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return Environmentfacilitieschipview2ItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
