// ignore_for_file: must_be_immutable

part of 'favourite_empty_bloc.dart';

/// Represents the state of FavouriteEmpty in the application.
class FavouriteEmptyState extends Equatable {
  FavouriteEmptyState({this.favouriteEmptyModelObj});

  FavouriteEmptyModel? favouriteEmptyModelObj;

  @override
  List<Object?> get props => [
        favouriteEmptyModelObj,
      ];
  FavouriteEmptyState copyWith({FavouriteEmptyModel? favouriteEmptyModelObj}) {
    return FavouriteEmptyState(
      favouriteEmptyModelObj:
          favouriteEmptyModelObj ?? this.favouriteEmptyModelObj,
    );
  }
}
