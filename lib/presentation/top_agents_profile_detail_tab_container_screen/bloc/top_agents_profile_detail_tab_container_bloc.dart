import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/top_agents_profile_detail_tab_container_screen/models/top_agents_profile_detail_tab_container_model.dart';part 'top_agents_profile_detail_tab_container_event.dart';part 'top_agents_profile_detail_tab_container_state.dart';/// A bloc that manages the state of a TopAgentsProfileDetailTabContainer according to the event that is dispatched to it.
class TopAgentsProfileDetailTabContainerBloc extends Bloc<TopAgentsProfileDetailTabContainerEvent, TopAgentsProfileDetailTabContainerState> {TopAgentsProfileDetailTabContainerBloc(TopAgentsProfileDetailTabContainerState initialState) : super(initialState) { on<TopAgentsProfileDetailTabContainerInitialEvent>(_onInitialize); }

_onInitialize(TopAgentsProfileDetailTabContainerInitialEvent event, Emitter<TopAgentsProfileDetailTabContainerState> emit, ) async  {  } 
 }
