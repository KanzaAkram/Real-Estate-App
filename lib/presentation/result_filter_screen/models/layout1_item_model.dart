import '../../../core/app_export.dart';/// This class is used in the [layout1_item_widget] screen.
class Layout1ItemModel {Layout1ItemModel({this.image, this.favorite, this.bridgelandModernHouse, this.text, this.semarangIndonesia, this.price, this.month, this.id, }) { image = image  ?? ImageConstant.imgShape41;favorite = favorite  ?? ImageConstant.imgFavoriteRedA200;bridgelandModernHouse = bridgelandModernHouse  ?? "Bridgeland Modern House";text = text  ?? "4.9";semarangIndonesia = semarangIndonesia  ?? "Semarang, Indonesia";price = price  ?? " 260";month = month  ?? "/month";id = id  ?? ""; }

String? image;

String? favorite;

String? bridgelandModernHouse;

String? text;

String? semarangIndonesia;

String? price;

String? month;

String? id;

 }
