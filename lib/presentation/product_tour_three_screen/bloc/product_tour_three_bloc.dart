import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/product_tour_three_screen/models/product_tour_three_model.dart';part 'product_tour_three_event.dart';part 'product_tour_three_state.dart';/// A bloc that manages the state of a ProductTourThree according to the event that is dispatched to it.
class ProductTourThreeBloc extends Bloc<ProductTourThreeEvent, ProductTourThreeState> {ProductTourThreeBloc(ProductTourThreeState initialState) : super(initialState) { on<ProductTourThreeInitialEvent>(_onInitialize); }

_onInitialize(ProductTourThreeInitialEvent event, Emitter<ProductTourThreeState> emit, ) async  { NavigatorService.pushNamed(AppRoutes.loginScreen, ); } 
 }
