// ignore_for_file: must_be_immutable

part of 'add_location_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddLocation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddLocationEvent extends Equatable {}

/// Event that is dispatched when the AddLocation widget is first created.
class AddLocationInitialEvent extends AddLocationEvent {
  @override
  List<Object?> get props => [];
}
