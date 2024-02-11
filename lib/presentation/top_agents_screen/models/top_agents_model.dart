// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'datalist1_item_model.dart';/// This class defines the variables used in the [top_agents_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TopAgentsModel extends Equatable {TopAgentsModel({this.datalist1ItemList = const []}) {  }

List<Datalist1ItemModel> datalist1ItemList;

TopAgentsModel copyWith({List<Datalist1ItemModel>? datalist1ItemList}) { return TopAgentsModel(
datalist1ItemList : datalist1ItemList ?? this.datalist1ItemList,
); } 
@override List<Object?> get props => [datalist1ItemList];
 }
