import '../filter_full_bottomsheet/widgets/categorychipview_item_widget.dart';
import '../filter_full_bottomsheet/widgets/environmentfacilitieschipview2_item_widget.dart';
import 'bloc/filter_full_bloc.dart';
import 'dart:async';
import 'models/categorychipview_item_model.dart';
import 'models/environmentfacilitieschipview2_item_model.dart';
import 'models/filter_full_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kanza_s_application1/core/app_export.dart';
import 'package:kanza_s_application1/widgets/custom_elevated_button.dart';
import 'package:kanza_s_application1/widgets/custom_search_view.dart';
import 'package:kanza_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FilterFullBottomsheet extends StatelessWidget {
  FilterFullBottomsheet({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  static Widget builder(BuildContext context) {
    return BlocProvider<FilterFullBloc>(
      create: (context) => FilterFullBloc(FilterFullState(
        filterFullModelObj: FilterFullModel(),
      ))
        ..add(FilterFullInitialEvent()),
      child: FilterFullBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 23.h,
          vertical: 24.v,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 3.v),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 60.h,
                child: Divider(),
              ),
            ),
            SizedBox(height: 33.v),
            _buildTitleRow(context),
            SizedBox(height: 160.v),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "lbl_location".tr,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup,
                  height: 4.adaptSize,
                  width: 4.adaptSize,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    bottom: 20.v,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.v),
            BlocSelector<FilterFullBloc, FilterFullState,
                TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "lbl_semarang".tr,
                  contentPadding: EdgeInsets.symmetric(vertical: 26.v),
                );
              },
            ),
            SizedBox(height: 15.v),
            _buildLayoutStack(context),
            SizedBox(height: 39.v),
            Text(
              "lbl_sell_type".tr,
              style: CustomTextStyles.titleMediumBold,
            ),
            SizedBox(height: 14.v),
            _buildCategoryChipView(context),
            SizedBox(height: 31.v),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "lbl_price".tr,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup,
                  height: 4.adaptSize,
                  width: 4.adaptSize,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    bottom: 20.v,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.v),
            _buildFormValueComparisonRow(context),
            SizedBox(height: 166.v),
            Text(
              "msg_environment_facilities".tr,
              style: CustomTextStyles.titleMediumBold,
            ),
            SizedBox(height: 16.v),
            _buildEnvironmentFacilitiesChipView(context),
            SizedBox(height: 38.v),
            _buildApplyFilterButton(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildReset(BuildContext context) {
    return CustomElevatedButton(
      height: 50.v,
      width: 88.h,
      text: "lbl_reset".tr,
      buttonStyle: CustomButtonStyles.fillRedATL25,
      buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
    );
  }

  /// Section Widget
  Widget _buildTitleRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 16.v,
            bottom: 11.v,
          ),
          child: Text(
            "lbl_filter".tr,
            style: CustomTextStyles.titleMediumBold,
          ),
        ),
        _buildReset(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildLayoutStack(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Container(
        height: 200.v,
        width: 327.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: 200.v,
              width: 327.h,
              child: GoogleMap(
                //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                  target: LatLng(
                    37.43296265331129,
                    -122.08832357078792,
                  ),
                  zoom: 14.4746,
                ),
                onMapCreated: (GoogleMapController controller) {
                  googleMapController.complete(controller);
                },
                zoomControlsEnabled: false,
                zoomGesturesEnabled: false,
                myLocationButtonEnabled: false,
                myLocationEnabled: false,
              ),
            ),
            CustomElevatedButton(
              height: 50.v,
              width: 327.h,
              text: "lbl_select_on_map".tr,
              buttonStyle: CustomButtonStyles.fillWhiteA2,
              buttonTextStyle: theme.textTheme.titleSmall!,
              alignment: Alignment.bottomCenter,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgThumbsUpOrange300,
              height: 51.v,
              width: 34.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 44.v,
                right: 132.h,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoryChipView(BuildContext context) {
    return BlocSelector<FilterFullBloc, FilterFullState, FilterFullModel?>(
      selector: (state) => state.filterFullModelObj,
      builder: (context, filterFullModelObj) {
        return Wrap(
          runSpacing: 6.v,
          spacing: 6.h,
          children: List<Widget>.generate(
            filterFullModelObj?.categorychipviewItemList.length ?? 0,
            (index) {
              CategorychipviewItemModel model =
                  filterFullModelObj?.categorychipviewItemList[index] ??
                      CategorychipviewItemModel();

              return CategorychipviewItemWidget(
                model,
                onSelectedChipView: (value) {
                  context.read<FilterFullBloc>().add(
                      UpdateChipViewEvent(index: index, isSelected: value));
                },
              );
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return BlocSelector<FilterFullBloc, FilterFullState,
        TextEditingController?>(
      selector: (state) => state.priceController,
      builder: (context, priceController) {
        return CustomTextFormField(
          width: 138.h,
          controller: priceController,
          hintText: "lbl_150".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 25.v, 20.h, 24.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconDollarFill,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 70.v,
          ),
          contentPadding: EdgeInsets.only(
            top: 26.v,
            right: 30.h,
            bottom: 26.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillGrayTL25,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFormValue(BuildContext context) {
    return BlocSelector<FilterFullBloc, FilterFullState,
        TextEditingController?>(
      selector: (state) => state.formValueController,
      builder: (context, formValueController) {
        return CustomTextFormField(
          width: 138.h,
          controller: formValueController,
          hintText: "lbl_350".tr,
          textInputAction: TextInputAction.done,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 25.v, 20.h, 24.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconDollarFill,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 70.v,
          ),
          contentPadding: EdgeInsets.only(
            top: 26.v,
            right: 30.h,
            bottom: 26.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillGrayTL25,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFormValueComparisonRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildPrice(context),
        CustomImageView(
          imagePath: ImageConstant.imgShare,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 25.v),
        ),
        _buildFormValue(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildEnvironmentFacilitiesChipView(BuildContext context) {
    return BlocSelector<FilterFullBloc, FilterFullState, FilterFullModel?>(
      selector: (state) => state.filterFullModelObj,
      builder: (context, filterFullModelObj) {
        return Wrap(
          runSpacing: 10.v,
          spacing: 10.h,
          children: List<Widget>.generate(
            filterFullModelObj?.environmentfacilitieschipview2ItemList.length ??
                0,
            (index) {
              Environmentfacilitieschipview2ItemModel model = filterFullModelObj
                      ?.environmentfacilitieschipview2ItemList[index] ??
                  Environmentfacilitieschipview2ItemModel();

              return Environmentfacilitieschipview2ItemWidget(
                model,
                onSelectedChipView: (value) {
                  context.read<FilterFullBloc>().add(
                      UpdateChipView1Event(index: index, isSelected: value));
                },
              );
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildApplyFilterButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_apply_filter".tr,
    );
  }
}
