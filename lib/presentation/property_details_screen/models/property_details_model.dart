// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'transactiontype_item_model.dart';import '../../../core/app_export.dart';import 'layout11_item_model.dart';import 'package:kanza_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';import 'layout12_item_model.dart';import 'viewallreviews_item_model.dart';import 'propertydetails_item_model.dart';/// This class defines the variables used in the [property_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PropertyDetailsModel extends Equatable {PropertyDetailsModel({this.transactiontypeItemList = const [], this.layout11ItemList = const [], this.dropdownItemList = const [], this.layout12ItemList = const [], this.viewallreviewsItemList = const [], this.propertydetailsItemList = const [], }) {  }

List<TransactiontypeItemModel> transactiontypeItemList;

List<Layout11ItemModel> layout11ItemList;

List<SelectionPopupModel> dropdownItemList;

List<Layout12ItemModel> layout12ItemList;

List<ViewallreviewsItemModel> viewallreviewsItemList;

List<PropertydetailsItemModel> propertydetailsItemList;

PropertyDetailsModel copyWith({List<TransactiontypeItemModel>? transactiontypeItemList, List<Layout11ItemModel>? layout11ItemList, List<SelectionPopupModel>? dropdownItemList, List<Layout12ItemModel>? layout12ItemList, List<ViewallreviewsItemModel>? viewallreviewsItemList, List<PropertydetailsItemModel>? propertydetailsItemList, }) { return PropertyDetailsModel(
transactiontypeItemList : transactiontypeItemList ?? this.transactiontypeItemList,
layout11ItemList : layout11ItemList ?? this.layout11ItemList,
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
layout12ItemList : layout12ItemList ?? this.layout12ItemList,
viewallreviewsItemList : viewallreviewsItemList ?? this.viewallreviewsItemList,
propertydetailsItemList : propertydetailsItemList ?? this.propertydetailsItemList,
); } 
@override List<Object?> get props => [transactiontypeItemList,layout11ItemList,dropdownItemList,layout12ItemList,viewallreviewsItemList,propertydetailsItemList];
 }
