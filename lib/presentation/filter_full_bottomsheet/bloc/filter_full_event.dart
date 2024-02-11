// ignore_for_file: must_be_immutable

part of 'filter_full_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FilterFull widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FilterFullEvent extends Equatable {}

/// Event that is dispatched when the FilterFull widget is first created.
class FilterFullInitialEvent extends FilterFullEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends FilterFullEvent {
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

///Event for changing ChipView selection
class UpdateChipView1Event extends FilterFullEvent {
  UpdateChipView1Event({
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
