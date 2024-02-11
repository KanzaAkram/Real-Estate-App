// ignore_for_file: must_be_immutable

part of 'product_tour_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductTourTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductTourTwoEvent extends Equatable {}

/// Event that is dispatched when the ProductTourTwo widget is first created.
class ProductTourTwoInitialEvent extends ProductTourTwoEvent {
  @override
  List<Object?> get props => [];
}
