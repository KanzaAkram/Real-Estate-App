// ignore_for_file: must_be_immutable

part of 'product_tour_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductTourOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductTourOneEvent extends Equatable {}

/// Event that is dispatched when the ProductTourOne widget is first created.
class ProductTourOneInitialEvent extends ProductTourOneEvent {
  @override
  List<Object?> get props => [];
}
