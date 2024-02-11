import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kanza_s_application1/presentation/user_success_bottomsheet/models/user_success_model.dart';
part 'user_success_event.dart';
part 'user_success_state.dart';

/// A bloc that manages the state of a UserSuccess according to the event that is dispatched to it.
class UserSuccessBloc extends Bloc<UserSuccessEvent, UserSuccessState> {
  UserSuccessBloc(UserSuccessState initialState) : super(initialState) {
    on<UserSuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UserSuccessInitialEvent event,
    Emitter<UserSuccessState> emit,
  ) async {}
}
