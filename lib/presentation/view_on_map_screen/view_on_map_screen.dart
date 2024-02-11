import 'bloc/view_on_map_bloc.dart';import 'dart:async';import 'models/view_on_map_model.dart';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:kanza_s_application1/core/app_export.dart';
// ignore_for_file: must_be_immutable
class ViewOnMapScreen extends StatelessWidget {ViewOnMapScreen({Key? key}) : super(key: key);

Completer<GoogleMapController> googleMapController = Completer();

static Widget builder(BuildContext context) { return BlocProvider<ViewOnMapBloc>(create: (context) => ViewOnMapBloc(ViewOnMapState(viewOnMapModelObj: ViewOnMapModel()))..add(ViewOnMapInitialEvent()), child: ViewOnMapScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<ViewOnMapBloc, ViewOnMapState>(builder: (context, state) {return SafeArea(child: Scaffold(body: _buildViewOnMap(context)));}); } 
/// Section Widget
Widget _buildViewOnMap(BuildContext context) { return SizedBox(height: SizeUtils.height, width: double.maxFinite, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)); } 
 }
