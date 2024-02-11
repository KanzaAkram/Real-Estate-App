import '../../../core/app_export.dart';/// This class is used in the [horizontal_item_widget] screen.
class HorizontalItemModel {HorizontalItemModel({this.image, this.baliBeachviewVilla, this.image1, this.text, this.baliIndonesia, this.price, this.month, this.id, }) { image = image  ?? ImageConstant.imgShape140x126;baliBeachviewVilla = baliBeachviewVilla  ?? "Bali Beachview Villa";image1 = image1  ?? ImageConstant.imgSignalYellow700;text = text  ?? "4.2 ";baliIndonesia = baliIndonesia  ?? "Bali, Indonesia";price = price  ?? " 420";month = month  ?? "/month";id = id  ?? ""; }

String? image;

String? baliBeachviewVilla;

String? image1;

String? text;

String? baliIndonesia;

String? price;

String? month;

String? id;

 }
