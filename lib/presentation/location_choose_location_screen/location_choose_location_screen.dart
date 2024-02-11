import 'bloc/location_choose_location_bloc.dart';import 'dart:async';import 'models/location_choose_location_model.dart';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:kanza_s_application1/core/app_export.dart';
// ignore_for_file: must_be_immutable
class LocationChooseLocationScreen extends StatelessWidget {LocationChooseLocationScreen({Key? key}) : super(key: key);

Completer<GoogleMapController> googleMapController = Completer();

static Widget builder(BuildContext context) { return BlocProvider<LocationChooseLocationBloc>(create: (context) => LocationChooseLocationBloc(LocationChooseLocationState(locationChooseLocationModelObj: LocationChooseLocationModel()))..add(LocationChooseLocationInitialEvent()), child: LocationChooseLocationScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<LocationChooseLocationBloc, LocationChooseLocationState>(builder: (context, state) {return SafeArea(child: Scaffold(body: _buildLocationChoose(context)));}); } 
/// Section Widget
Widget _buildLocationChoose(BuildContext context) { return SizedBox(height: SizeUtils.height, width: double.maxFinite, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)); } 
 }
