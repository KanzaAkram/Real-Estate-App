// ignore_for_file: must_be_immutable

part of 'extra_information_success_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExtraInformationSuccess widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExtraInformationSuccessEvent extends Equatable {}

/// Event that is dispatched when the ExtraInformationSuccess widget is first created.
class ExtraInformationSuccessInitialEvent extends ExtraInformationSuccessEvent {
  @override
  List<Object?> get props => [];
}
