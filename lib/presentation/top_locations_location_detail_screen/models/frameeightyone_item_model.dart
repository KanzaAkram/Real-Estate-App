// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [frameeightyone_item_widget] screen.
class FrameeightyoneItemModel extends Equatable {FrameeightyoneItemModel({this.buttonFilter, this.isSelected, }) { buttonFilter = buttonFilter  ?? "House";isSelected = isSelected  ?? false; }

String? buttonFilter;

bool? isSelected;

FrameeightyoneItemModel copyWith({String? buttonFilter, bool? isSelected, }) { return FrameeightyoneItemModel(
buttonFilter : buttonFilter ?? this.buttonFilter,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonFilter,isSelected];
 }
