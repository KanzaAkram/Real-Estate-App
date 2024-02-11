// ignore_for_file: must_be_immutable

part of 'messages_list_bloc.dart';

/// Represents the state of MessagesList in the application.
class MessagesListState extends Equatable {
  MessagesListState({this.messagesListModelObj});

  MessagesListModel? messagesListModelObj;

  @override
  List<Object?> get props => [
        messagesListModelObj,
      ];
  MessagesListState copyWith({MessagesListModel? messagesListModelObj}) {
    return MessagesListState(
      messagesListModelObj: messagesListModelObj ?? this.messagesListModelObj,
    );
  }
}
