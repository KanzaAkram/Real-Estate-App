// ignore_for_file: must_be_immutable

part of 'transaction_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionTabContainerEvent extends Equatable {}

/// Event that is dispatched when the TransactionTabContainer widget is first created.
class TransactionTabContainerInitialEvent extends TransactionTabContainerEvent {
  @override
  List<Object?> get props => [];
}
