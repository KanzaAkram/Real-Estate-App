import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kanza_s_application1/presentation/reviews_gallery_screen/models/reviews_gallery_model.dart';part 'reviews_gallery_event.dart';part 'reviews_gallery_state.dart';/// A bloc that manages the state of a ReviewsGallery according to the event that is dispatched to it.
class ReviewsGalleryBloc extends Bloc<ReviewsGalleryEvent, ReviewsGalleryState> {ReviewsGalleryBloc(ReviewsGalleryState initialState) : super(initialState) { on<ReviewsGalleryInitialEvent>(_onInitialize); }

_onInitialize(ReviewsGalleryInitialEvent event, Emitter<ReviewsGalleryState> emit, ) async  {  } 
 }
