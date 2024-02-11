// ignore_for_file: must_be_immutable

part of 'review_select_voucher_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReviewSelectVoucher widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReviewSelectVoucherEvent extends Equatable {}

/// Event that is dispatched when the ReviewSelectVoucher widget is first created.
class ReviewSelectVoucherInitialEvent extends ReviewSelectVoucherEvent {
  @override
  List<Object?> get props => [];
}
