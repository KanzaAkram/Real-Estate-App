import '../../../core/app_export.dart';/// This class is used in the [cardlist_item_widget] screen.
class CardlistItemModel {CardlistItemModel({this.text, this.balance, this.price, this.balance1, this.id, }) { text = text  ?? "•••••••• 1222";balance = balance  ?? "Balance";price = price  ?? " 31,250";balance1 = balance1  ?? ImageConstant.imgUser;id = id  ?? ""; }

String? text;

String? balance;

String? price;

String? balance1;

String? id;

 }
