// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'topagentsprofiledetail_item_model.dart';/// This class defines the variables used in the [top_agents_profile_detail_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TopAgentsProfileDetailModel extends Equatable {TopAgentsProfileDetailModel({this.topagentsprofiledetailItemList = const []}) {  }

List<TopagentsprofiledetailItemModel> topagentsprofiledetailItemList;

TopAgentsProfileDetailModel copyWith({List<TopagentsprofiledetailItemModel>? topagentsprofiledetailItemList}) { return TopAgentsProfileDetailModel(
topagentsprofiledetailItemList : topagentsprofiledetailItemList ?? this.topagentsprofiledetailItemList,
); } 
@override List<Object?> get props => [topagentsprofiledetailItemList];
 }
