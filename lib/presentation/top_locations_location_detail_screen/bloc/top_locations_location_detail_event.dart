// ignore_for_file: must_be_immutable

part of 'top_locations_location_detail_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TopLocationsLocationDetail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TopLocationsLocationDetailEvent extends Equatable {}

/// Event that is dispatched when the TopLocationsLocationDetail widget is first created.
class TopLocationsLocationDetailInitialEvent
    extends TopLocationsLocationDetailEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends TopLocationsLocationDetailEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
