import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/categorychipview_item_model.dart';
import '../models/environmentfacilitieschipview2_item_model.dart';
import 'package:kanza_s_application1/presentation/filter_full_bottomsheet/models/filter_full_model.dart';
part 'filter_full_event.dart';
part 'filter_full_state.dart';

/// A bloc that manages the state of a FilterFull according to the event that is dispatched to it.
class FilterFullBloc extends Bloc<FilterFullEvent, FilterFullState> {
  FilterFullBloc(FilterFullState initialState) : super(initialState) {
    on<FilterFullInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
    on<UpdateChipView1Event>(_updateChipView1);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<FilterFullState> emit,
  ) {
    List<CategorychipviewItemModel> newList =
        List<CategorychipviewItemModel>.from(
            state.filterFullModelObj!.categorychipviewItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        filterFullModelObj: state.filterFullModelObj
            ?.copyWith(categorychipviewItemList: newList)));
  }

  _updateChipView1(
    UpdateChipView1Event event,
    Emitter<FilterFullState> emit,
  ) {
    List<Environmentfacilitieschipview2ItemModel> newList =
        List<Environmentfacilitieschipview2ItemModel>.from(
            state.filterFullModelObj!.environmentfacilitieschipview2ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        filterFullModelObj: state.filterFullModelObj
            ?.copyWith(environmentfacilitieschipview2ItemList: newList)));
  }

  List<CategorychipviewItemModel> fillCategorychipviewItemList() {
    return List.generate(2, (index) => CategorychipviewItemModel());
  }

  List<Environmentfacilitieschipview2ItemModel>
      fillEnvironmentfacilitieschipview2ItemList() {
    return List.generate(
        7, (index) => Environmentfacilitieschipview2ItemModel());
  }

  _onInitialize(
    FilterFullInitialEvent event,
    Emitter<FilterFullState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      priceController: TextEditingController(),
      formValueController: TextEditingController(),
    ));
    emit(state.copyWith(
        filterFullModelObj: state.filterFullModelObj?.copyWith(
      categorychipviewItemList: fillCategorychipviewItemList(),
      environmentfacilitieschipview2ItemList:
          fillEnvironmentfacilitieschipview2ItemList(),
    )));
  }
}
