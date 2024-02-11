// ignore_for_file: must_be_immutable

part of 'form_otp_bloc.dart';

/// Represents the state of FormOtp in the application.
class FormOtpState extends Equatable {
  FormOtpState({
    this.otpController,
    this.formOtpModelObj,
  });

  TextEditingController? otpController;

  FormOtpModel? formOtpModelObj;

  @override
  List<Object?> get props => [
        otpController,
        formOtpModelObj,
      ];
  FormOtpState copyWith({
    TextEditingController? otpController,
    FormOtpModel? formOtpModelObj,
  }) {
    return FormOtpState(
      otpController: otpController ?? this.otpController,
      formOtpModelObj: formOtpModelObj ?? this.formOtpModelObj,
    );
  }
}
