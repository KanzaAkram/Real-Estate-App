import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/estatescardvertical_item_model.dart';import 'package:kanza_s_application1/presentation/vertical_page/models/vertical_model.dart';part 'vertical_event.dart';part 'vertical_state.dart';/// A bloc that manages the state of a Vertical according to the event that is dispatched to it.
class VerticalBloc extends Bloc<VerticalEvent, VerticalState> {VerticalBloc(VerticalState initialState) : super(initialState) { on<VerticalInitialEvent>(_onInitialize); }

_onInitialize(VerticalInitialEvent event, Emitter<VerticalState> emit, ) async  { emit(state.copyWith(verticalModelObj: state.verticalModelObj?.copyWith(estatescardverticalItemList: fillEstatescardverticalItemList()))); } 
List<EstatescardverticalItemModel> fillEstatescardverticalItemList() { return [EstatescardverticalItemModel(theLaurelsVilla: ImageConstant.imgShape30, price: " 320", month: "/night", theLaurelsVilla1: "The Laurels Villa", image: ImageConstant.imgSignalOrange3009x9, text: "4.9", baliIndonesia: "Bali, Indonesia"), EstatescardverticalItemModel(theLaurelsVilla: ImageConstant.imgShape160x144, price: " 220", month: "/month", theLaurelsVilla1: "Wings Tower", image: ImageConstant.imgSignalOrange300, text: "4.9", baliIndonesia: "Jakarta, Indonesia"), EstatescardverticalItemModel(theLaurelsVilla: ImageConstant.imgShape160x144, price: " 220", month: "/month", theLaurelsVilla1: "Wings Tower", image: ImageConstant.imgSignalOrange3009x9, text: "4.9", baliIndonesia: "Jakarta, Indonesia")]; } 
 }