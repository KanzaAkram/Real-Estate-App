// ignore_for_file: must_be_immutable

part of 'listings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Listings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ListingsEvent extends Equatable {}

/// Event that is dispatched when the Listings widget is first created.
class ListingsInitialEvent extends ListingsEvent {
  @override
  List<Object?> get props => [];
}
