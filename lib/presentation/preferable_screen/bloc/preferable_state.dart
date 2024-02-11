// ignore_for_file: must_be_immutable

part of 'preferable_bloc.dart';

/// Represents the state of Preferable in the application.
class PreferableState extends Equatable {
  PreferableState({this.preferableModelObj});

  PreferableModel? preferableModelObj;

  @override
  List<Object?> get props => [
        preferableModelObj,
      ];
  PreferableState copyWith({PreferableModel? preferableModelObj}) {
    return PreferableState(
      preferableModelObj: preferableModelObj ?? this.preferableModelObj,
    );
  }
}
