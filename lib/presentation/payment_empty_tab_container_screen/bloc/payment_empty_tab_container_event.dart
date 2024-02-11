// ignore_for_file: must_be_immutable

part of 'payment_empty_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentEmptyTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentEmptyTabContainerEvent extends Equatable {}

/// Event that is dispatched when the PaymentEmptyTabContainer widget is first created.
class PaymentEmptyTabContainerInitialEvent
    extends PaymentEmptyTabContainerEvent {
  @override
  List<Object?> get props => [];
}
