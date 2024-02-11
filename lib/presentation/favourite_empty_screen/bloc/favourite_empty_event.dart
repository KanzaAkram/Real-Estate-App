// ignore_for_file: must_be_immutable

part of 'favourite_empty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FavouriteEmpty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FavouriteEmptyEvent extends Equatable {}

/// Event that is dispatched when the FavouriteEmpty widget is first created.
class FavouriteEmptyInitialEvent extends FavouriteEmptyEvent {
  @override
  List<Object?> get props => [];
}
