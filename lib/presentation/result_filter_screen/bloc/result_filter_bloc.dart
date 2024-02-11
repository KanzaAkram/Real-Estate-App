import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/filter_item_model.dart';import '../models/layout1_item_model.dart';import 'package:kanza_s_application1/presentation/result_filter_screen/models/result_filter_model.dart';part 'result_filter_event.dart';part 'result_filter_state.dart';/// A bloc that manages the state of a ResultFilter according to the event that is dispatched to it.
class ResultFilterBloc extends Bloc<ResultFilterEvent, ResultFilterState> {ResultFilterBloc(ResultFilterState initialState) : super(initialState) { on<ResultFilterInitialEvent>(_onInitialize); on<UpdateChipViewEvent>(_updateChipView); }

_updateChipView(UpdateChipViewEvent event, Emitter<ResultFilterState> emit, ) { List<FilterItemModel> newList = List<FilterItemModel>.from(state.resultFilterModelObj!.filterItemList); newList[event.index] = newList[event.index].copyWith(isSelected: event.isSelected); emit(state.copyWith(resultFilterModelObj: state.resultFilterModelObj?.copyWith(filterItemList: newList))); } 
List<FilterItemModel> fillFilterItemList() { return List.generate(2, (index) => FilterItemModel()); } 
List<Layout1ItemModel> fillLayout1ItemList() { return [Layout1ItemModel(image: ImageConstant.imgShape41, favorite: ImageConstant.imgFavoriteRedA200, bridgelandModernHouse: "Bridgeland Modern House", text: "4.9", semarangIndonesia: "Semarang, Indonesia", price: " 260", month: "/month"), Layout1ItemModel(image: ImageConstant.imgShape31, favorite: ImageConstant.imgFavorite, bridgelandModernHouse: "Wayside Modern House", text: "4.4", semarangIndonesia: "Semarang, Indonesia", price: " 220", month: "/month"), Layout1ItemModel(image: ImageConstant.imgShape42, favorite: ImageConstant.imgFavoriteRedA200, bridgelandModernHouse: "Shoolview House", text: "4.6", semarangIndonesia: "Semarang, Indonesia", price: " 245", month: "/month")]; } 
_onInitialize(ResultFilterInitialEvent event, Emitter<ResultFilterState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); emit(state.copyWith(resultFilterModelObj: state.resultFilterModelObj?.copyWith(filterItemList: fillFilterItemList(), layout1ItemList: fillLayout1ItemList()))); } 
 }
