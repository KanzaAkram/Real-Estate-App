import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/datagrid_item_model.dart';import 'package:kanza_s_application1/presentation/top_locations_screen/models/top_locations_model.dart';part 'top_locations_event.dart';part 'top_locations_state.dart';/// A bloc that manages the state of a TopLocations according to the event that is dispatched to it.
class TopLocationsBloc extends Bloc<TopLocationsEvent, TopLocationsState> {TopLocationsBloc(TopLocationsState initialState) : super(initialState) { on<TopLocationsInitialEvent>(_onInitialize); }

_onInitialize(TopLocationsInitialEvent event, Emitter<TopLocationsState> emit, ) async  { emit(state.copyWith(topLocationsModelObj: state.topLocationsModelObj?.copyWith(datagridItemList: fillDatagridItemList()))); } 
List<DatagridItemModel> fillDatagridItemList() { return [DatagridItemModel(bali: ImageConstant.imgShape174x144, bali1: "Bali"), DatagridItemModel(bali: ImageConstant.imgShape5, bali1: "Jakarta"), DatagridItemModel(bali: ImageConstant.imgShape6, bali1: "Yogyakarta"), DatagridItemModel(bali: ImageConstant.imgShape7, bali1: "Semarang"), DatagridItemModel(bali: ImageConstant.imgShape8, bali1: "Jakarta"), DatagridItemModel(bali: ImageConstant.imgShape9, bali1: "Jakarta")]; } 
 }