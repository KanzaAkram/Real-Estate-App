// ignore_for_file: must_be_immutable

part of 'review_select_voucher_bloc.dart';

/// Represents the state of ReviewSelectVoucher in the application.
class ReviewSelectVoucherState extends Equatable {
  ReviewSelectVoucherState({
    this.televisionController,
    this.reviewSelectVoucherModelObj,
  });

  TextEditingController? televisionController;

  ReviewSelectVoucherModel? reviewSelectVoucherModelObj;

  @override
  List<Object?> get props => [
        televisionController,
        reviewSelectVoucherModelObj,
      ];
  ReviewSelectVoucherState copyWith({
    TextEditingController? televisionController,
    ReviewSelectVoucherModel? reviewSelectVoucherModelObj,
  }) {
    return ReviewSelectVoucherState(
      televisionController: televisionController ?? this.televisionController,
      reviewSelectVoucherModelObj:
          reviewSelectVoucherModelObj ?? this.reviewSelectVoucherModelObj,
    );
  }
}
