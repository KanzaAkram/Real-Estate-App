// ignore_for_file: must_be_immutable

part of 'promotion_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Promotion widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PromotionEvent extends Equatable {}

/// Event that is dispatched when the Promotion widget is first created.
class PromotionInitialEvent extends PromotionEvent {
  @override
  List<Object?> get props => [];
}
