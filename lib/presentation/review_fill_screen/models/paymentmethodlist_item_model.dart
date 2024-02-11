import '../../../core/app_export.dart';/// This class is used in the [paymentmethodlist_item_widget] screen.
class PaymentmethodlistItemModel {PaymentmethodlistItemModel({this.checkmark, this.text, this.balance, this.price, this.balance1, this.id, }) { checkmark = checkmark  ?? ImageConstant.imgCheckmark;text = text  ?? "•••••••• 1222";balance = balance  ?? "Balance";price = price  ?? " 54,200";balance1 = balance1  ?? ImageConstant.imgSettings;id = id  ?? ""; }

String? checkmark;

String? text;

String? balance;

String? price;

String? balance1;

String? id;

 }
