// ignore_for_file: must_be_immutable

part of 'empty_map_bloc.dart';

/// Represents the state of EmptyMap in the application.
class EmptyMapState extends Equatable {
  EmptyMapState({this.emptyMapModelObj});

  EmptyMapModel? emptyMapModelObj;

  @override
  List<Object?> get props => [
        emptyMapModelObj,
      ];
  EmptyMapState copyWith({EmptyMapModel? emptyMapModelObj}) {
    return EmptyMapState(
      emptyMapModelObj: emptyMapModelObj ?? this.emptyMapModelObj,
    );
  }
}
