import '../../../core/app_export.dart';/// This class is used in the [listings_item_widget] screen.
class ListingsItemModel {ListingsItemModel({this.fairviewApartment, this.price, this.day, this.fairviewApartment1, this.text, this.jakartaIndonesia, this.id, }) { fairviewApartment = fairviewApartment  ?? ImageConstant.imgShape35;price = price  ?? " 220";day = day  ?? "/day";fairviewApartment1 = fairviewApartment1  ?? "Fairview Apartment";text = text  ?? "4.2";jakartaIndonesia = jakartaIndonesia  ?? "Jakarta, Indonesia";id = id  ?? ""; }

String? fairviewApartment;

String? price;

String? day;

String? fairviewApartment1;

String? text;

String? jakartaIndonesia;

String? id;

 }
