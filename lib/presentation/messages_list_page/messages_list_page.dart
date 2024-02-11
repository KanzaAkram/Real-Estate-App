import '../messages_list_page/widgets/messageslist_item_widget.dart';
import 'bloc/messages_list_bloc.dart';
import 'models/messages_list_model.dart';
import 'models/messageslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MessagesListPage extends StatefulWidget {
  const MessagesListPage({Key? key})
      : super(
          key: key,
        );

  @override
  MessagesListPageState createState() => MessagesListPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MessagesListBloc>(
      create: (context) => MessagesListBloc(MessagesListState(
        messagesListModelObj: MessagesListModel(),
      ))
        ..add(MessagesListInitialEvent()),
      child: MessagesListPage(),
    );
  }
}

class MessagesListPageState extends State<MessagesListPage>
    with AutomaticKeepAliveClientMixin<MessagesListPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 37.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_all_chats".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 16.v),
                    _buildMessagesList(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMessagesList(BuildContext context) {
    return BlocSelector<MessagesListBloc, MessagesListState,
        MessagesListModel?>(
      selector: (state) => state.messagesListModelObj,
      builder: (context, messagesListModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 10.v,
            );
          },
          itemCount: messagesListModelObj?.messageslistItemList.length ?? 0,
          itemBuilder: (context, index) {
            MessageslistItemModel model =
                messagesListModelObj?.messageslistItemList[index] ??
                    MessageslistItemModel();
            return MessageslistItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
