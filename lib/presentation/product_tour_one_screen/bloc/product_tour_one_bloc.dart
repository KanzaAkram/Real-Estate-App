import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/product_tour_one_screen/models/product_tour_one_model.dart';part 'product_tour_one_event.dart';part 'product_tour_one_state.dart';/// A bloc that manages the state of a ProductTourOne according to the event that is dispatched to it.
class ProductTourOneBloc extends Bloc<ProductTourOneEvent, ProductTourOneState> {ProductTourOneBloc(ProductTourOneState initialState) : super(initialState) { on<ProductTourOneInitialEvent>(_onInitialize); }

_onInitialize(ProductTourOneInitialEvent event, Emitter<ProductTourOneState> emit, ) async  { NavigatorService.pushNamed(AppRoutes.loginScreen, ); } 
 }
