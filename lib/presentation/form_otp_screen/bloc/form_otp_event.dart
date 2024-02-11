// ignore_for_file: must_be_immutable

part of 'form_otp_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FormOtp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FormOtpEvent extends Equatable {}

/// Event that is dispatched when the FormOtp widget is first created.
class FormOtpInitialEvent extends FormOtpEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends FormOtpEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
