// ignore_for_file: must_be_immutable

part of 'top_agents_profile_detail_tab_container_bloc.dart';

/// Represents the state of TopAgentsProfileDetailTabContainer in the application.
class TopAgentsProfileDetailTabContainerState extends Equatable {
  TopAgentsProfileDetailTabContainerState(
      {this.topAgentsProfileDetailTabContainerModelObj});

  TopAgentsProfileDetailTabContainerModel?
      topAgentsProfileDetailTabContainerModelObj;

  @override
  List<Object?> get props => [
        topAgentsProfileDetailTabContainerModelObj,
      ];
  TopAgentsProfileDetailTabContainerState copyWith(
      {TopAgentsProfileDetailTabContainerModel?
          topAgentsProfileDetailTabContainerModelObj}) {
    return TopAgentsProfileDetailTabContainerState(
      topAgentsProfileDetailTabContainerModelObj:
          topAgentsProfileDetailTabContainerModelObj ??
              this.topAgentsProfileDetailTabContainerModelObj,
    );
  }
}
