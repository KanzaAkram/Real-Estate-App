// ignore_for_file: must_be_immutable

part of 'property_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PropertyDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PropertyDetailsEvent extends Equatable {}

/// Event that is dispatched when the PropertyDetails widget is first created.
class PropertyDetailsInitialEvent extends PropertyDetailsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends PropertyDetailsEvent {
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

///event for dropdown selection
class ChangeDropDownEvent extends PropertyDetailsEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
