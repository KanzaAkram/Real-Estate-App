// ignore_for_file: must_be_immutable

part of 'featured_estates_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FeaturedEstates widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FeaturedEstatesEvent extends Equatable {}

/// Event that is dispatched when the FeaturedEstates widget is first created.
class FeaturedEstatesInitialEvent extends FeaturedEstatesEvent {
  @override
  List<Object?> get props => [];
}
