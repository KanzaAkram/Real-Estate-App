// ignore_for_file: must_be_immutable

part of 'featured_estates_bloc.dart';

/// Represents the state of FeaturedEstates in the application.
class FeaturedEstatesState extends Equatable {
  FeaturedEstatesState({
    this.searchController,
    this.featuredEstatesModelObj,
  });

  TextEditingController? searchController;

  FeaturedEstatesModel? featuredEstatesModelObj;

  @override
  List<Object?> get props => [
        searchController,
        featuredEstatesModelObj,
      ];
  FeaturedEstatesState copyWith({
    TextEditingController? searchController,
    FeaturedEstatesModel? featuredEstatesModelObj,
  }) {
    return FeaturedEstatesState(
      searchController: searchController ?? this.searchController,
      featuredEstatesModelObj:
          featuredEstatesModelObj ?? this.featuredEstatesModelObj,
    );
  }
}
