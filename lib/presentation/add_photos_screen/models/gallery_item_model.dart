import '../../../core/app_export.dart';/// This class is used in the [gallery_item_widget] screen.
class GalleryItemModel {GalleryItemModel({this.shape, this.iconClose, this.id, }) { shape = shape  ?? ImageConstant.imgShape161x159;iconClose = iconClose  ?? ImageConstant.imgIconCloseWhiteA700;id = id  ?? ""; }

String? shape;

String? iconClose;

String? id;

 }
