// ignore_for_file: must_be_immutable

part of 'edit_form_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditForm widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditFormEvent extends Equatable {}

/// Event that is dispatched when the EditForm widget is first created.
class EditFormInitialEvent extends EditFormEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends EditFormEvent {
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
class UpdateChipView1Event extends EditFormEvent {
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
class UpdateChipView2Event extends EditFormEvent {
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

///Event for changing ChipView selection
class UpdateChipView3Event extends EditFormEvent {
  UpdateChipView3Event({
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
class UpdateChipView4Event extends EditFormEvent {
  UpdateChipView4Event({
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
