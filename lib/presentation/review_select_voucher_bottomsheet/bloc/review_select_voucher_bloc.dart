import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/review_select_voucher_bottomsheet/models/review_select_voucher_model.dart';part 'review_select_voucher_event.dart';part 'review_select_voucher_state.dart';/// A bloc that manages the state of a ReviewSelectVoucher according to the event that is dispatched to it.
class ReviewSelectVoucherBloc extends Bloc<ReviewSelectVoucherEvent, ReviewSelectVoucherState> {ReviewSelectVoucherBloc(ReviewSelectVoucherState initialState) : super(initialState) { on<ReviewSelectVoucherInitialEvent>(_onInitialize); }

_onInitialize(ReviewSelectVoucherInitialEvent event, Emitter<ReviewSelectVoucherState> emit, ) async  { emit(state.copyWith(televisionController: TextEditingController())); } 
 }
