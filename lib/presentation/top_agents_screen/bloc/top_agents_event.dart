// ignore_for_file: must_be_immutable

part of 'top_agents_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TopAgents widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TopAgentsEvent extends Equatable {}

/// Event that is dispatched when the TopAgents widget is first created.
class TopAgentsInitialEvent extends TopAgentsEvent {
  @override
  List<Object?> get props => [];
}
