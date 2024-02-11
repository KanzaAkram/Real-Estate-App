import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/user_empty_screen/models/user_empty_model.dart';part 'user_empty_event.dart';part 'user_empty_state.dart';/// A bloc that manages the state of a UserEmpty according to the event that is dispatched to it.
class UserEmptyBloc extends Bloc<UserEmptyEvent, UserEmptyState> {UserEmptyBloc(UserEmptyState initialState) : super(initialState) { on<UserEmptyInitialEvent>(_onInitialize); }

_onInitialize(UserEmptyInitialEvent event, Emitter<UserEmptyState> emit, ) async  { emit(state.copyWith(lockController: TextEditingController(), mobileNumberController: TextEditingController(), emailController: TextEditingController())); } 
 }
