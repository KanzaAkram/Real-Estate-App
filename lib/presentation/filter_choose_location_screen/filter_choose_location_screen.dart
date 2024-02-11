import 'bloc/filter_choose_location_bloc.dart';import 'dart:async';import 'models/filter_choose_location_model.dart';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:kanza_s_application1/core/app_export.dart';
// ignore_for_file: must_be_immutable
class FilterChooseLocationScreen extends StatelessWidget {FilterChooseLocationScreen({Key? key}) : super(key: key);

Completer<GoogleMapController> googleMapController = Completer();

static Widget builder(BuildContext context) { return BlocProvider<FilterChooseLocationBloc>(create: (context) => FilterChooseLocationBloc(FilterChooseLocationState(filterChooseLocationModelObj: FilterChooseLocationModel()))..add(FilterChooseLocationInitialEvent()), child: FilterChooseLocationScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<FilterChooseLocationBloc, FilterChooseLocationState>(builder: (context, state) {return SafeArea(child: Scaffold(body: _buildFilterChoose(context)));}); } 
/// Section Widget
Widget _buildFilterChoose(BuildContext context) { return SizedBox(height: SizeUtils.height, width: double.maxFinite, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)); } 
 }
