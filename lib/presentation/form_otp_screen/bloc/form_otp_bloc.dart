import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/form_otp_screen/models/form_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'form_otp_event.dart';part 'form_otp_state.dart';/// A bloc that manages the state of a FormOtp according to the event that is dispatched to it.
class FormOtpBloc extends Bloc<FormOtpEvent, FormOtpState> with  CodeAutoFill {FormOtpBloc(FormOtpState initialState) : super(initialState) { on<FormOtpInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<FormOtpState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(FormOtpInitialEvent event, Emitter<FormOtpState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); } 
 }
