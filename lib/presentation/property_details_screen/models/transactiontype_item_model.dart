// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [transactiontype_item_widget] screen.
class TransactiontypeItemModel extends Equatable {TransactiontypeItemModel({this.layout, this.isSelected, }) { layout = layout  ?? "Rent";isSelected = isSelected  ?? false; }

String? layout;

bool? isSelected;

TransactiontypeItemModel copyWith({String? layout, bool? isSelected, }) { return TransactiontypeItemModel(
layout : layout ?? this.layout,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [layout,isSelected];
 }
