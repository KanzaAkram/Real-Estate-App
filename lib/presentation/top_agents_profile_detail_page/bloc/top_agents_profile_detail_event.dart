// ignore_for_file: must_be_immutable

part of 'top_agents_profile_detail_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TopAgentsProfileDetail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TopAgentsProfileDetailEvent extends Equatable {}

/// Event that is dispatched when the TopAgentsProfileDetail widget is first created.
class TopAgentsProfileDetailInitialEvent extends TopAgentsProfileDetailEvent {
  @override
  List<Object?> get props => [];
}
