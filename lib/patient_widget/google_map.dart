import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Mapgg extends StatefulWidget {
  static const String id = 'google_map';

  @override
  State<Mapgg> createState() => _Mapgg();
}

class _Mapgg extends State<Mapgg> {
  Completer<GoogleMapController> _controller = Completer();
  var _currentlocation = 0;

  static final CameraPosition currentLocation = _cameraPosition(13.6205789,100.5008831,18.8);

  static final CameraPosition bangsean = _cameraPosition(13.2784153,100.9246544,15);

  static  CameraPosition _cameraPosition(double lat,long,zoom) {
    return CameraPosition(
      target: LatLng(lat,long),
      zoom: zoom - 2.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: false,
        mapType: MapType.normal,
        initialCameraPosition: bangsean,
        onMapCreated: (GoogleMapController controller){
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _current,
        backgroundColor: Colors.black,
        child: Icon(
          Icons.location_searching_outlined
        ),
      ),
    );
  }
  Future<void> _current() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(currentLocation));
  }

}