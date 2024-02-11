import '../../../core/app_export.dart';/// This class is used in the [featuredestates_item_widget] screen.
class FeaturedestatesItemModel {FeaturedestatesItemModel({this.wingsTower, this.favorite, this.price, this.month, this.wingsTower1, this.text, this.jakartaIndonesia, this.id, }) { wingsTower = wingsTower  ?? ImageConstant.imgShape160x144;favorite = favorite  ?? ImageConstant.imgFavorite;price = price  ?? " 220";month = month  ?? "/month";wingsTower1 = wingsTower1  ?? "Wings Tower";text = text  ?? "4.9";jakartaIndonesia = jakartaIndonesia  ?? "Jakarta, Indonesia";id = id  ?? ""; }

String? wingsTower;

String? favorite;

String? price;

String? month;

String? wingsTower1;

String? text;

String? jakartaIndonesia;

String? id;

 }
