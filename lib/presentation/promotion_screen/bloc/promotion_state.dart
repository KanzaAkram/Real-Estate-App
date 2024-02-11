// ignore_for_file: must_be_immutable

part of 'promotion_bloc.dart';

/// Represents the state of Promotion in the application.
class PromotionState extends Equatable {
  PromotionState({this.promotionModelObj});

  PromotionModel? promotionModelObj;

  @override
  List<Object?> get props => [
        promotionModelObj,
      ];
  PromotionState copyWith({PromotionModel? promotionModelObj}) {
    return PromotionState(
      promotionModelObj: promotionModelObj ?? this.promotionModelObj,
    );
  }
}
