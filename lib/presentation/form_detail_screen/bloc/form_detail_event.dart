// ignore_for_file: must_be_immutable

part of 'form_detail_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FormDetail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FormDetailEvent extends Equatable {}

/// Event that is dispatched when the FormDetail widget is first created.
class FormDetailInitialEvent extends FormDetailEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends FormDetailEvent {
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
class UpdateChipView1Event extends FormDetailEvent {
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
