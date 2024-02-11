// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'preferableselected_item_model.dart';/// This class defines the variables used in the [preferable_selected_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PreferableSelectedModel extends Equatable {PreferableSelectedModel({this.preferableselectedItemList = const []}) {  }

List<PreferableselectedItemModel> preferableselectedItemList;

PreferableSelectedModel copyWith({List<PreferableselectedItemModel>? preferableselectedItemList}) { return PreferableSelectedModel(
preferableselectedItemList : preferableselectedItemList ?? this.preferableselectedItemList,
); } 
@override List<Object?> get props => [preferableselectedItemList];
 }
