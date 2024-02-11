// ignore_for_file: must_be_immutable

part of 'product_tour_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductTourThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductTourThreeEvent extends Equatable {}

/// Event that is dispatched when the ProductTourThree widget is first created.
class ProductTourThreeInitialEvent extends ProductTourThreeEvent {
  @override
  List<Object?> get props => [];
}
