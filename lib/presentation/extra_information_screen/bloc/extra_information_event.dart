// ignore_for_file: must_be_immutable

part of 'extra_information_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExtraInformation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExtraInformationEvent extends Equatable {}

/// Event that is dispatched when the ExtraInformation widget is first created.
class ExtraInformationInitialEvent extends ExtraInformationEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ExtraInformationEvent {
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
class UpdateChipView1Event extends ExtraInformationEvent {
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

///Event for changing ChipView selection
class UpdateChipView2Event extends ExtraInformationEvent {
  UpdateChipView2Event({
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
