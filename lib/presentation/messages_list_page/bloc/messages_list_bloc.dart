import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/messageslist_item_model.dart';
import 'package:kanza_s_application1/presentation/messages_list_page/models/messages_list_model.dart';
part 'messages_list_event.dart';
part 'messages_list_state.dart';

/// A bloc that manages the state of a MessagesList according to the event that is dispatched to it.
class MessagesListBloc extends Bloc<MessagesListEvent, MessagesListState> {
  MessagesListBloc(MessagesListState initialState) : super(initialState) {
    on<MessagesListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessagesListInitialEvent event,
    Emitter<MessagesListState> emit,
  ) async {
    emit(state.copyWith(
        messagesListModelObj: state.messagesListModelObj?.copyWith(
      messageslistItemList: fillMessageslistItemList(),
    )));
  }

  List<MessageslistItemModel> fillMessageslistItemList() {
    return [
      MessageslistItemModel(
          milano: ImageConstant.imgShape27,
          milano1: "Milano",
          temporincididuntutlaboreetdolo:
              "tempor incididunt ut labore et dolore",
          text: "10.45",
          itemCounter: "1"),
      MessageslistItemModel(
          milano1: "Emmet Perry",
          temporincididuntutlaboreetdolo:
              "Excepteur sint occaecat cupidatat non"),
      MessageslistItemModel(
          milano1: "Walter Lindsey",
          temporincididuntutlaboreetdolo: "Quis nostrud exercitation ullamco")
    ];
  }
}
