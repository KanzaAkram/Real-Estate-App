import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kanza_s_application1/presentation/favourite_empty_screen/models/favourite_empty_model.dart';
part 'favourite_empty_event.dart';
part 'favourite_empty_state.dart';

/// A bloc that manages the state of a FavouriteEmpty according to the event that is dispatched to it.
class FavouriteEmptyBloc
    extends Bloc<FavouriteEmptyEvent, FavouriteEmptyState> {
  FavouriteEmptyBloc(FavouriteEmptyState initialState) : super(initialState) {
    on<FavouriteEmptyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FavouriteEmptyInitialEvent event,
    Emitter<FavouriteEmptyState> emit,
  ) async {}
}
