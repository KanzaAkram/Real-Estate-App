// ignore_for_file: must_be_immutable

part of 'listings_bloc.dart';

/// Represents the state of Listings in the application.
class ListingsState extends Equatable {
  ListingsState({this.listingsModelObj});

  ListingsModel? listingsModelObj;

  @override
  List<Object?> get props => [
        listingsModelObj,
      ];
  ListingsState copyWith({ListingsModel? listingsModelObj}) {
    return ListingsState(
      listingsModelObj: listingsModelObj ?? this.listingsModelObj,
    );
  }
}
