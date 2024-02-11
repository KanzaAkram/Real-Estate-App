import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/notification_list_tab_container_screen/models/notification_list_tab_container_model.dart';part 'notification_list_tab_container_event.dart';part 'notification_list_tab_container_state.dart';/// A bloc that manages the state of a NotificationListTabContainer according to the event that is dispatched to it.
class NotificationListTabContainerBloc extends Bloc<NotificationListTabContainerEvent, NotificationListTabContainerState> {NotificationListTabContainerBloc(NotificationListTabContainerState initialState) : super(initialState) { on<NotificationListTabContainerInitialEvent>(_onInitialize); }

_onInitialize(NotificationListTabContainerInitialEvent event, Emitter<NotificationListTabContainerState> emit, ) async  {  } 
 }
