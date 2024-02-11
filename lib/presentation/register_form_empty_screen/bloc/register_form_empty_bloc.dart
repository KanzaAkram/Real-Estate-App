import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/register_form_empty_screen/models/register_form_empty_model.dart';part 'register_form_empty_event.dart';part 'register_form_empty_state.dart';/// A bloc that manages the state of a RegisterFormEmpty according to the event that is dispatched to it.
class RegisterFormEmptyBloc extends Bloc<RegisterFormEmptyEvent, RegisterFormEmptyState> {RegisterFormEmptyBloc(RegisterFormEmptyState initialState) : super(initialState) { on<RegisterFormEmptyInitialEvent>(_onInitialize); }

_onInitialize(RegisterFormEmptyInitialEvent event, Emitter<RegisterFormEmptyState> emit, ) async  { emit(state.copyWith(fullNameController: TextEditingController(), emailController: TextEditingController(), passwordController: TextEditingController()));NavigatorService.pushNamed(AppRoutes.loginScreen, ); } 
 }
