// ignore_for_file: must_be_immutable

part of 'chat_bloc.dart';

/// Represents the state of Chat in the application.
class ChatState extends Equatable {
  ChatState({
    this.descriptionEditTextController,
    this.descriptionEditTextController1,
    this.formChatEditTextController,
    this.chatModelObj,
  });

  TextEditingController? descriptionEditTextController;

  TextEditingController? descriptionEditTextController1;

  TextEditingController? formChatEditTextController;

  ChatModel? chatModelObj;

  @override
  List<Object?> get props => [
        descriptionEditTextController,
        descriptionEditTextController1,
        formChatEditTextController,
        chatModelObj,
      ];
  ChatState copyWith({
    TextEditingController? descriptionEditTextController,
    TextEditingController? descriptionEditTextController1,
    TextEditingController? formChatEditTextController,
    ChatModel? chatModelObj,
  }) {
    return ChatState(
      descriptionEditTextController:
          descriptionEditTextController ?? this.descriptionEditTextController,
      descriptionEditTextController1:
          descriptionEditTextController1 ?? this.descriptionEditTextController1,
      formChatEditTextController:
          formChatEditTextController ?? this.formChatEditTextController,
      chatModelObj: chatModelObj ?? this.chatModelObj,
    );
  }
}
