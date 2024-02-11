// ignore_for_file: must_be_immutable

part of 'real_estates_list_by_category_bloc.dart';

/// Represents the state of RealEstatesListByCategory in the application.
class RealEstatesListByCategoryState extends Equatable {
  RealEstatesListByCategoryState({
    this.searchController,
    this.realEstatesListByCategoryModelObj,
  });

  TextEditingController? searchController;

  RealEstatesListByCategoryModel? realEstatesListByCategoryModelObj;

  @override
  List<Object?> get props => [
        searchController,
        realEstatesListByCategoryModelObj,
      ];
  RealEstatesListByCategoryState copyWith({
    TextEditingController? searchController,
    RealEstatesListByCategoryModel? realEstatesListByCategoryModelObj,
  }) {
    return RealEstatesListByCategoryState(
      searchController: searchController ?? this.searchController,
      realEstatesListByCategoryModelObj: realEstatesListByCategoryModelObj ??
          this.realEstatesListByCategoryModelObj,
    );
  }
}
