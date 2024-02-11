// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'preferablegrid_item_model.dart';/// This class defines the variables used in the [preferable_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PreferableModel extends Equatable {PreferableModel({this.preferablegridItemList = const []}) {  }

List<PreferablegridItemModel> preferablegridItemList;

PreferableModel copyWith({List<PreferablegridItemModel>? preferablegridItemList}) { return PreferableModel(
preferablegridItemList : preferablegridItemList ?? this.preferablegridItemList,
); } 
@override List<Object?> get props => [preferablegridItemList];
 }
