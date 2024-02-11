import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/horizontal_item_model.dart';
import 'package:kanza_s_application1/presentation/horizontal_screen/models/horizontal_model.dart';
part 'horizontal_event.dart';
part 'horizontal_state.dart';

/// A bloc that manages the state of a Horizontal according to the event that is dispatched to it.
class HorizontalBloc extends Bloc<HorizontalEvent, HorizontalState> {
  HorizontalBloc(HorizontalState initialState) : super(initialState) {
    on<HorizontalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HorizontalInitialEvent event,
    Emitter<HorizontalState> emit,
  ) async {
    emit(state.copyWith(
        horizontalModelObj: state.horizontalModelObj?.copyWith(
      horizontalItemList: fillHorizontalItemList(),
    )));
  }

  List<HorizontalItemModel> fillHorizontalItemList() {
    return [
      HorizontalItemModel(
          image: ImageConstant.imgShape140x126,
          baliBeachviewVilla: "Bali Beachview Villa",
          image1: ImageConstant.imgSignalYellow700,
          text: "4.2 ",
          baliIndonesia: "Bali, Indonesia",
          price: " 420",
          month: "/month"),
      HorizontalItemModel(
          image: ImageConstant.imgShape20,
          baliBeachviewVilla: "Wings Tower",
          image1: ImageConstant.imgSignalYellow7009x9,
          text: "4.9 ",
          baliIndonesia: "Jakarta, Indonesia",
          price: " 220",
          month: "/month"),
      HorizontalItemModel(
          image: ImageConstant.imgShape31,
          baliBeachviewVilla: "Wayside Modern House",
          image1: ImageConstant.imgSignalYellow7009x9,
          text: "4.4",
          baliIndonesia: "Semarang, Indonesia",
          price: " 220",
          month: "/month")
    ];
  }
}
