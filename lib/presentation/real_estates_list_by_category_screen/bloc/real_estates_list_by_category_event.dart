// ignore_for_file: must_be_immutable

part of 'real_estates_list_by_category_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RealEstatesListByCategory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RealEstatesListByCategoryEvent extends Equatable {}

/// Event that is dispatched when the RealEstatesListByCategory widget is first created.
class RealEstatesListByCategoryInitialEvent
    extends RealEstatesListByCategoryEvent {
  @override
  List<Object?> get props => [];
}
