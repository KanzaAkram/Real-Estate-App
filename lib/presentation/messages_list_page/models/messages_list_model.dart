// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'messageslist_item_model.dart';/// This class defines the variables used in the [messages_list_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesListModel extends Equatable {MessagesListModel({this.messageslistItemList = const []}) {  }

List<MessageslistItemModel> messageslistItemList;

MessagesListModel copyWith({List<MessageslistItemModel>? messageslistItemList}) { return MessagesListModel(
messageslistItemList : messageslistItemList ?? this.messageslistItemList,
); } 
@override List<Object?> get props => [messageslistItemList];
 }
