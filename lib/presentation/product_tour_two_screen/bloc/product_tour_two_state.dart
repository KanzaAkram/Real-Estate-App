// ignore_for_file: must_be_immutable

part of 'product_tour_two_bloc.dart';

/// Represents the state of ProductTourTwo in the application.
class ProductTourTwoState extends Equatable {
  ProductTourTwoState({this.productTourTwoModelObj});

  ProductTourTwoModel? productTourTwoModelObj;

  @override
  List<Object?> get props => [
        productTourTwoModelObj,
      ];
  ProductTourTwoState copyWith({ProductTourTwoModel? productTourTwoModelObj}) {
    return ProductTourTwoState(
      productTourTwoModelObj:
          productTourTwoModelObj ?? this.productTourTwoModelObj,
    );
  }
}
