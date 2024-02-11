// ignore_for_file: must_be_immutable

part of 'view_bloc.dart';

/// Represents the state of View in the application.
class ViewState extends Equatable {
  ViewState({this.viewModelObj});

  ViewModel? viewModelObj;

  @override
  List<Object?> get props => [
        viewModelObj,
      ];
  ViewState copyWith({ViewModel? viewModelObj}) {
    return ViewState(
      viewModelObj: viewModelObj ?? this.viewModelObj,
    );
  }
}
