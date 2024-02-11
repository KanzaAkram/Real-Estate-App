import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/form_empty_screen/models/form_empty_model.dart';part 'form_empty_event.dart';part 'form_empty_state.dart';/// A bloc that manages the state of a FormEmpty according to the event that is dispatched to it.
class FormEmptyBloc extends Bloc<FormEmptyEvent, FormEmptyState> {FormEmptyBloc(FormEmptyState initialState) : super(initialState) { on<FormEmptyInitialEvent>(_onInitialize); }

_onInitialize(FormEmptyInitialEvent event, Emitter<FormEmptyState> emit, ) async  { emit(state.copyWith(emailController: TextEditingController(), passwordController: TextEditingController()));NavigatorService.pushNamed(AppRoutes.registerFormEmptyScreen, ); } 
 }
