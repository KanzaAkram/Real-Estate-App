// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [totalroomschipview_item_widget] screen.
class TotalroomschipviewItemModel extends Equatable {TotalroomschipviewItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "< 4";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

TotalroomschipviewItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return TotalroomschipviewItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
