// ignore_for_file: must_be_immutable

part of 'call_bloc.dart';

/// Represents the state of Call in the application.
class CallState extends Equatable {
  CallState({this.callModelObj});

  CallModel? callModelObj;

  @override
  List<Object?> get props => [
        callModelObj,
      ];
  CallState copyWith({CallModel? callModelObj}) {
    return CallState(
      callModelObj: callModelObj ?? this.callModelObj,
    );
  }
}
