// ignore_for_file: must_be_immutable

part of 'call_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Call widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CallEvent extends Equatable {}

/// Event that is dispatched when the Call widget is first created.
class CallInitialEvent extends CallEvent {
  @override
  List<Object?> get props => [];
}
