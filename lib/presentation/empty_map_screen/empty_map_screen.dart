import 'bloc/empty_map_bloc.dart';
import 'dart:async';
import 'models/empty_map_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kanza_s_application1/core/app_export.dart';

class EmptyMapScreen extends StatelessWidget {
  EmptyMapScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  static Widget builder(BuildContext context) {
    return BlocProvider<EmptyMapBloc>(
      create: (context) => EmptyMapBloc(EmptyMapState(
        emptyMapModelObj: EmptyMapModel(),
      ))
        ..add(EmptyMapInitialEvent()),
      child: EmptyMapScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmptyMapBloc, EmptyMapState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: _buildEmptymap(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmptymap(BuildContext context) {
    return SizedBox(
      height: SizeUtils.height,
      width: double.maxFinite,
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
    );
  }
}
