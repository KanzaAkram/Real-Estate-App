import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/gallery_item_model.dart';import 'package:kanza_s_application1/presentation/add_photos_screen/models/add_photos_model.dart';part 'add_photos_event.dart';part 'add_photos_state.dart';/// A bloc that manages the state of a AddPhotos according to the event that is dispatched to it.
class AddPhotosBloc extends Bloc<AddPhotosEvent, AddPhotosState> {AddPhotosBloc(AddPhotosState initialState) : super(initialState) { on<AddPhotosInitialEvent>(_onInitialize); }

_onInitialize(AddPhotosInitialEvent event, Emitter<AddPhotosState> emit, ) async  { emit(state.copyWith(addPhotosModelObj: state.addPhotosModelObj?.copyWith(galleryItemList: fillGalleryItemList()))); } 
List<GalleryItemModel> fillGalleryItemList() { return [GalleryItemModel(shape: ImageConstant.imgShape161x159, iconClose: ImageConstant.imgIconCloseWhiteA700), GalleryItemModel(shape: ImageConstant.imgShape21, iconClose: ImageConstant.imgIconCloseWhiteA700), GalleryItemModel(shape: ImageConstant.imgShape22, iconClose: ImageConstant.imgIconCloseWhiteA700)]; } 
 }
