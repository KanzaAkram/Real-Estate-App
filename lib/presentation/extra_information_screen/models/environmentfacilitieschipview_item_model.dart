// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [environmentfacilitieschipview_item_widget] screen.
class EnvironmentfacilitieschipviewItemModel extends Equatable {EnvironmentfacilitieschipviewItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "Parking Lot";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

EnvironmentfacilitieschipviewItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return EnvironmentfacilitieschipviewItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
