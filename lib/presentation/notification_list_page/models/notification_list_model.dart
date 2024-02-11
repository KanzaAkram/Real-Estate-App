// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'categorylist_item_model.dart';import 'notificationlist_item_model.dart';import 'samuelellalist_item_model.dart';/// This class defines the variables used in the [notification_list_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationListModel extends Equatable {NotificationListModel({this.categorylistItemList = const [], this.notificationlistItemList = const [], this.samuelellalistItemList = const [], }) {  }

List<CategorylistItemModel> categorylistItemList;

List<NotificationlistItemModel> notificationlistItemList;

List<SamuelellalistItemModel> samuelellalistItemList;

NotificationListModel copyWith({List<CategorylistItemModel>? categorylistItemList, List<NotificationlistItemModel>? notificationlistItemList, List<SamuelellalistItemModel>? samuelellalistItemList, }) { return NotificationListModel(
categorylistItemList : categorylistItemList ?? this.categorylistItemList,
notificationlistItemList : notificationlistItemList ?? this.notificationlistItemList,
samuelellalistItemList : samuelellalistItemList ?? this.samuelellalistItemList,
); } 
@override List<Object?> get props => [categorylistItemList,notificationlistItemList,samuelellalistItemList];
 }
