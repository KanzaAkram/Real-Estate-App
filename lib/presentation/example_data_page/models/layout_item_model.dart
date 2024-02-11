import '../../../core/app_export.dart';/// This class is used in the [layout_item_widget] screen.
class LayoutItemModel {LayoutItemModel({this.image, this.skyDandelionsApartment, this.text, this.jakartaIndonesia, this.id, }) { image = image  ?? ImageConstant.imgShape104x126;skyDandelionsApartment = skyDandelionsApartment  ?? "Sky Dandelions\nApartment";text = text  ?? "4.2 ";jakartaIndonesia = jakartaIndonesia  ?? "Jakarta, Indonesia";id = id  ?? ""; }

String? image;

String? skyDandelionsApartment;

String? text;

String? jakartaIndonesia;

String? id;

 }
