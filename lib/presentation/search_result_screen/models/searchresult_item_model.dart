import '../../../core/app_export.dart';/// This class is used in the [searchresult_item_widget] screen.
class SearchresultItemModel {SearchresultItemModel({this.bungalowHouse, this.favorite, this.price, this.month, this.bungalowHouse1, this.text, this.jakartaIndonesia, this.id, }) { bungalowHouse = bungalowHouse  ?? ImageConstant.imgShape2;favorite = favorite  ?? ImageConstant.imgFavoriteRedA200;price = price  ?? " 235";month = month  ?? "/month";bungalowHouse1 = bungalowHouse1  ?? "Bungalow House";text = text  ?? "4.7";jakartaIndonesia = jakartaIndonesia  ?? "Jakarta, Indonesia";id = id  ?? ""; }

String? bungalowHouse;

String? favorite;

String? price;

String? month;

String? bungalowHouse1;

String? text;

String? jakartaIndonesia;

String? id;

 }
