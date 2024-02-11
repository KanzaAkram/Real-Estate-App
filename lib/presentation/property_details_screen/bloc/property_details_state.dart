// ignore_for_file: must_be_immutable

part of 'property_details_bloc.dart';

/// Represents the state of PropertyDetails in the application.
class PropertyDetailsState extends Equatable {
  PropertyDetailsState({
    this.selectedDropDownValue,
    this.propertyDetailsModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  PropertyDetailsModel? propertyDetailsModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        propertyDetailsModelObj,
      ];
  PropertyDetailsState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    PropertyDetailsModel? propertyDetailsModelObj,
  }) {
    return PropertyDetailsState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      propertyDetailsModelObj:
          propertyDetailsModelObj ?? this.propertyDetailsModelObj,
    );
  }
}
