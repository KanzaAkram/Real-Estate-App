// ignore_for_file: must_be_immutable

part of 'result_filter_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResultFilter widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResultFilterEvent extends Equatable {}

/// Event that is dispatched when the ResultFilter widget is first created.
class ResultFilterInitialEvent extends ResultFilterEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ResultFilterEvent {
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
