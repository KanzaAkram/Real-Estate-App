import '../../../core/app_export.dart';/// This class is used in the [home_item_widget] screen.
class HomeItemModel {HomeItemModel({this.wingsTower, this.favorite, this.price, this.month, this.wingsTower1, this.image, this.text, this.jakartaIndonesia, this.jakartaIndonesia1, this.id, }) { wingsTower = wingsTower  ?? ImageConstant.imgShape160x144;favorite = favorite  ?? ImageConstant.imgFavorite;price = price  ?? " 220";month = month  ?? "/month";wingsTower1 = wingsTower1  ?? "Wings Tower";image = image  ?? ImageConstant.imgSignalOrange3009x9;text = text  ?? "4.9";jakartaIndonesia = jakartaIndonesia  ?? ImageConstant.imgLinkedin;jakartaIndonesia1 = jakartaIndonesia1  ?? "Jakarta, Indonesia";id = id  ?? ""; }

String? wingsTower;

String? favorite;

String? price;

String? month;

String? wingsTower1;

String? image;

String? text;

String? jakartaIndonesia;

String? jakartaIndonesia1;

String? id;

 }
