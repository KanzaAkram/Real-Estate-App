import '../all_reviews_page/widgets/allreviews_item_widget.dart';import 'bloc/all_reviews_bloc.dart';import 'models/all_reviews_model.dart';import 'models/allreviews_item_model.dart';import 'package:flutter/material.dart';import 'package:kanza_s_application1/core/app_export.dart';class AllReviewsPage extends StatefulWidget {const AllReviewsPage({Key? key}) : super(key: key);

@override AllReviewsPageState createState() =>  AllReviewsPageState();

static Widget builder(BuildContext context) { return BlocProvider<AllReviewsBloc>(create: (context) => AllReviewsBloc(AllReviewsState(allReviewsModelObj: AllReviewsModel()))..add(AllReviewsInitialEvent()), child: AllReviewsPage()); } 
 }
class AllReviewsPageState extends State<AllReviewsPage> with  AutomaticKeepAliveClientMixin<AllReviewsPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 17.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_user_reviews".tr, style: theme.textTheme.titleMedium), SizedBox(height: 15.v), _buildAllReviews(context)]))]))))); } 
/// Section Widget
Widget _buildAllReviews(BuildContext context) { return BlocSelector<AllReviewsBloc, AllReviewsState, AllReviewsModel?>(selector: (state) => state.allReviewsModelObj, builder: (context, allReviewsModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 19.v);}, itemCount: allReviewsModelObj?.allreviewsItemList.length ?? 0, itemBuilder: (context, index) {AllreviewsItemModel model = allReviewsModelObj?.allreviewsItemList[index] ?? AllreviewsItemModel(); return AllreviewsItemWidget(model);});}); } 
 }
