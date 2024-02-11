import '../../../core/app_export.dart';/// This class is used in the [viewallreviews_item_widget] screen.
class ViewallreviewsItemModel {ViewallreviewsItemModel({this.close, this.text, this.from, this.text1, this.reviewers, this.id, }) { close = close  ?? ImageConstant.imgClose;text = text  ?? "4.9";from = from  ?? "From";text1 = text1  ?? "112";reviewers = reviewers  ?? "reviewers";id = id  ?? ""; }

String? close;

String? text;

String? from;

String? text1;

String? reviewers;

String? id;

 }
