// ignore_for_file: must_be_immutable

part of 'vertical_bloc.dart';

/// Represents the state of Vertical in the application.
class VerticalState extends Equatable {
  VerticalState({this.verticalModelObj});

  VerticalModel? verticalModelObj;

  @override
  List<Object?> get props => [
        verticalModelObj,
      ];
  VerticalState copyWith({VerticalModel? verticalModelObj}) {
    return VerticalState(
      verticalModelObj: verticalModelObj ?? this.verticalModelObj,
    );
  }
}
