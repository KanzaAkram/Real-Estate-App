// ignore_for_file: must_be_immutable

part of 'reviews_gallery_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReviewsGallery widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReviewsGalleryEvent extends Equatable {}

/// Event that is dispatched when the ReviewsGallery widget is first created.
class ReviewsGalleryInitialEvent extends ReviewsGalleryEvent {
  @override
  List<Object?> get props => [];
}
