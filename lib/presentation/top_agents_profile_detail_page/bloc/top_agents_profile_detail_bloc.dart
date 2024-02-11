import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/topagentsprofiledetail_item_model.dart';
import 'package:kanza_s_application1/presentation/top_agents_profile_detail_page/models/top_agents_profile_detail_model.dart';
part 'top_agents_profile_detail_event.dart';
part 'top_agents_profile_detail_state.dart';

/// A bloc that manages the state of a TopAgentsProfileDetail according to the event that is dispatched to it.
class TopAgentsProfileDetailBloc
    extends Bloc<TopAgentsProfileDetailEvent, TopAgentsProfileDetailState> {
  TopAgentsProfileDetailBloc(TopAgentsProfileDetailState initialState)
      : super(initialState) {
    on<TopAgentsProfileDetailInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TopAgentsProfileDetailInitialEvent event,
    Emitter<TopAgentsProfileDetailState> emit,
  ) async {
    emit(state.copyWith(
        topAgentsProfileDetailModelObj:
            state.topAgentsProfileDetailModelObj?.copyWith(
      topagentsprofiledetailItemList: fillTopagentsprofiledetailItemList(),
    )));
  }

  List<TopagentsprofiledetailItemModel> fillTopagentsprofiledetailItemList() {
    return [
      TopagentsprofiledetailItemModel(
          brookvaleVilla: ImageConstant.imgShape17,
          price: " 320",
          month: "/month",
          brookvaleVilla1: "Brookvale Villa",
          image: ImageConstant.imgSignalOrange3009x9,
          text: "5",
          jakartaIndonesia: "Jakarta, Indonesia"),
      TopagentsprofiledetailItemModel(
          brookvaleVilla: ImageConstant.imgShape18,
          price: " 290",
          month: "/month",
          brookvaleVilla1: "The Overdale "),
      TopagentsprofiledetailItemModel(
          brookvaleVilla: ImageConstant.imgShape17,
          price: " 320",
          month: "/month",
          brookvaleVilla1: "Brookvale Villa"),
      TopagentsprofiledetailItemModel(
          brookvaleVilla: ImageConstant.imgShape18,
          price: " 290",
          month: "/month",
          brookvaleVilla1: "The Overdale ")
    ];
  }
}
