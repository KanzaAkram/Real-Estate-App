// ignore_for_file: must_be_immutable

part of 'example_data_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExampleData widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExampleDataEvent extends Equatable {}

/// Event that is dispatched when the ExampleData widget is first created.
class ExampleDataInitialEvent extends ExampleDataEvent {
  @override
  List<Object?> get props => [];
}
