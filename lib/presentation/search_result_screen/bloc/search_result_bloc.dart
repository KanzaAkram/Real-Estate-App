import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/searchresult_item_model.dart';import 'package:kanza_s_application1/presentation/search_result_screen/models/search_result_model.dart';part 'search_result_event.dart';part 'search_result_state.dart';/// A bloc that manages the state of a SearchResult according to the event that is dispatched to it.
class SearchResultBloc extends Bloc<SearchResultEvent, SearchResultState> {SearchResultBloc(SearchResultState initialState) : super(initialState) { on<SearchResultInitialEvent>(_onInitialize); }

List<SearchresultItemModel> fillSearchresultItemList() { return [SearchresultItemModel(bungalowHouse: ImageConstant.imgShape2, favorite: ImageConstant.imgFavoriteRedA200, price: " 235", month: "/month", bungalowHouse1: "Bungalow House", text: "4.7", jakartaIndonesia: "Jakarta, Indonesia"), SearchresultItemModel(bungalowHouse: ImageConstant.imgShape38, favorite: ImageConstant.imgFavoriteRedA200, price: " 260", month: "/month", bungalowHouse1: "Bridgeland Modern "), SearchresultItemModel(bungalowHouse: ImageConstant.imgShape3, favorite: ImageConstant.imgFavoriteRedA200, price: " 271", month: "/month", bungalowHouse1: "Mill Sper House"), SearchresultItemModel(bungalowHouse: ImageConstant.imgShape39, favorite: ImageConstant.imgFavoriteRedA200, price: " 370", month: "/month", bungalowHouse1: "Flower Heaven "), SearchresultItemModel(bungalowHouse: ImageConstant.imgShape40, favorite: ImageConstant.imgFavorite, price: " 220", month: "/month", bungalowHouse1: "Wings Tower", text: "4.4", jakartaIndonesia: "Semarang, Indonesia"), SearchresultItemModel(bungalowHouse: ImageConstant.imgShape3, favorite: ImageConstant.imgFavoriteRedA200, price: " 220", month: "/month", bungalowHouse1: "Crows Nest Luxury ", text: "4.2", jakartaIndonesia: "Semarang, Indonesia")]; } 
_onInitialize(SearchResultInitialEvent event, Emitter<SearchResultState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); emit(state.copyWith(searchResultModelObj: state.searchResultModelObj?.copyWith(searchresultItemList: fillSearchresultItemList()))); } 
 }
