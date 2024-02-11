// ignore_for_file: must_be_immutable

part of 'top_agents_profile_detail_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TopAgentsProfileDetailTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TopAgentsProfileDetailTabContainerEvent extends Equatable {}

/// Event that is dispatched when the TopAgentsProfileDetailTabContainer widget is first created.
class TopAgentsProfileDetailTabContainerInitialEvent
    extends TopAgentsProfileDetailTabContainerEvent {
  @override
  List<Object?> get props => [];
}
