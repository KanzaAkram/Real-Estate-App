// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'layoutchipview_item_model.dart';import '../../../core/app_export.dart';import 'propertyfeatureslist_item_model.dart';import 'totalroomschipview_item_model.dart';import 'environmentfacilitieschipview_item_model.dart';/// This class defines the variables used in the [extra_information_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExtraInformationModel extends Equatable {ExtraInformationModel({this.layoutchipviewItemList = const [], this.propertyfeatureslistItemList = const [], this.totalroomschipviewItemList = const [], this.environmentfacilitieschipviewItemList = const [], }) {  }

List<LayoutchipviewItemModel> layoutchipviewItemList;

List<PropertyfeatureslistItemModel> propertyfeatureslistItemList;

List<TotalroomschipviewItemModel> totalroomschipviewItemList;

List<EnvironmentfacilitieschipviewItemModel> environmentfacilitieschipviewItemList;

ExtraInformationModel copyWith({List<LayoutchipviewItemModel>? layoutchipviewItemList, List<PropertyfeatureslistItemModel>? propertyfeatureslistItemList, List<TotalroomschipviewItemModel>? totalroomschipviewItemList, List<EnvironmentfacilitieschipviewItemModel>? environmentfacilitieschipviewItemList, }) { return ExtraInformationModel(
layoutchipviewItemList : layoutchipviewItemList ?? this.layoutchipviewItemList,
propertyfeatureslistItemList : propertyfeatureslistItemList ?? this.propertyfeatureslistItemList,
totalroomschipviewItemList : totalroomschipviewItemList ?? this.totalroomschipviewItemList,
environmentfacilitieschipviewItemList : environmentfacilitieschipviewItemList ?? this.environmentfacilitieschipviewItemList,
); } 
@override List<Object?> get props => [layoutchipviewItemList,propertyfeatureslistItemList,totalroomschipviewItemList,environmentfacilitieschipviewItemList];
 }
