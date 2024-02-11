// ignore_for_file: must_be_immutable

part of 'add_photos_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddPhotos widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddPhotosEvent extends Equatable {}

/// Event that is dispatched when the AddPhotos widget is first created.
class AddPhotosInitialEvent extends AddPhotosEvent {
  @override
  List<Object?> get props => [];
}
