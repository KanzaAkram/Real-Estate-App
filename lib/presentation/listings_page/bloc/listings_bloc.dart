import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listings_item_model.dart';
import 'package:kanza_s_application1/presentation/listings_page/models/listings_model.dart';
part 'listings_event.dart';
part 'listings_state.dart';

/// A bloc that manages the state of a Listings according to the event that is dispatched to it.
class ListingsBloc extends Bloc<ListingsEvent, ListingsState> {
  ListingsBloc(ListingsState initialState) : super(initialState) {
    on<ListingsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ListingsInitialEvent event,
    Emitter<ListingsState> emit,
  ) async {
    emit(state.copyWith(
        listingsModelObj: state.listingsModelObj?.copyWith(
      listingsItemList: fillListingsItemList(),
    )));
  }

  List<ListingsItemModel> fillListingsItemList() {
    return [
      ListingsItemModel(
          fairviewApartment: ImageConstant.imgShape35,
          price: " 220",
          day: "/day",
          fairviewApartment1: "Fairview Apartment",
          text: "4.2",
          jakartaIndonesia: "Jakarta, Indonesia"),
      ListingsItemModel(
          fairviewApartment: ImageConstant.imgShape36,
          price: " 220",
          day: "/day",
          fairviewApartment1: "Shoolview House",
          text: "4.2",
          jakartaIndonesia: "Jakarta, Indonesia"),
      ListingsItemModel(
          fairviewApartment: ImageConstant.imgShape35,
          price: " 220",
          day: "/day",
          fairviewApartment1: "Fairview Apartment"),
      ListingsItemModel(
          fairviewApartment: ImageConstant.imgShape36,
          price: " 220",
          day: "/day",
          fairviewApartment1: "Shoolview House")
    ];
  }
}
