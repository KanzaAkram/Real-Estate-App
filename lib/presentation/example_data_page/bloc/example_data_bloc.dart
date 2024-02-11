import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/layout_item_model.dart';
import 'package:kanza_s_application1/presentation/example_data_page/models/example_data_model.dart';
part 'example_data_event.dart';
part 'example_data_state.dart';

/// A bloc that manages the state of a ExampleData according to the event that is dispatched to it.
class ExampleDataBloc extends Bloc<ExampleDataEvent, ExampleDataState> {
  ExampleDataBloc(ExampleDataState initialState) : super(initialState) {
    on<ExampleDataInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExampleDataInitialEvent event,
    Emitter<ExampleDataState> emit,
  ) async {
    emit(state.copyWith(
        exampleDataModelObj: state.exampleDataModelObj?.copyWith(
      layoutItemList: fillLayoutItemList(),
    )));
  }

  List<LayoutItemModel> fillLayoutItemList() {
    return [
      LayoutItemModel(
          image: ImageConstant.imgShape104x126,
          skyDandelionsApartment: "Sky Dandelions\nApartment",
          text: "4.2 ",
          jakartaIndonesia: "Jakarta, Indonesia"),
      LayoutItemModel(
          skyDandelionsApartment: "Sky Dandelions\nApartment",
          text: "4.2 ",
          jakartaIndonesia: "Jakarta, Indonesia")
    ];
  }
}
