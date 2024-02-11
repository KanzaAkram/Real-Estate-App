// ignore_for_file: must_be_immutable

part of 'transaction_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Transaction widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionEvent extends Equatable {}

/// Event that is dispatched when the Transaction widget is first created.
class TransactionInitialEvent extends TransactionEvent {
  @override
  List<Object?> get props => [];
}
