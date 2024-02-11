// ignore_for_file: must_be_immutable

part of 'add_photos_bloc.dart';

/// Represents the state of AddPhotos in the application.
class AddPhotosState extends Equatable {
  AddPhotosState({this.addPhotosModelObj});

  AddPhotosModel? addPhotosModelObj;

  @override
  List<Object?> get props => [
        addPhotosModelObj,
      ];
  AddPhotosState copyWith({AddPhotosModel? addPhotosModelObj}) {
    return AddPhotosState(
      addPhotosModelObj: addPhotosModelObj ?? this.addPhotosModelObj,
    );
  }
}
