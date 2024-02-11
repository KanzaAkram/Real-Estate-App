// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'chipviewlayout1_item_model.dart';import 'chipviewlayout3_item_model.dart';/// This class defines the variables used in the [form_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FormDetailModel extends Equatable {FormDetailModel({this.chipviewlayout1ItemList = const [], this.chipviewlayout3ItemList = const [], }) {  }

List<Chipviewlayout1ItemModel> chipviewlayout1ItemList;

List<Chipviewlayout3ItemModel> chipviewlayout3ItemList;

FormDetailModel copyWith({List<Chipviewlayout1ItemModel>? chipviewlayout1ItemList, List<Chipviewlayout3ItemModel>? chipviewlayout3ItemList, }) { return FormDetailModel(
chipviewlayout1ItemList : chipviewlayout1ItemList ?? this.chipviewlayout1ItemList,
chipviewlayout3ItemList : chipviewlayout3ItemList ?? this.chipviewlayout3ItemList,
); } 
@override List<Object?> get props => [chipviewlayout1ItemList,chipviewlayout3ItemList];
 }
