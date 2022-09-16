import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

void main() {}

class Googlemaps extends StatefulWidget {
  const Googlemaps({Key? key}) : super(key: key);

  @override
  State<Googlemaps> createState() => _GooglemapsState();
}

class _GooglemapsState extends State<Googlemaps> {
  static const String googleAPIKey = "AIzaSyBpZtcbTgFSoILhBHRAqo9Ub8O3zA2XgeM";
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng source = LatLng(28.5420502, 77.2112786);
  static const LatLng destination = LatLng(20.888765, 74.771164);
  List<LatLng> PolylineCoordinates = [];
  LocationData? currentlocation;
  void getCurrentLocation() {
    Location location = Location();
    location.getLocation().then((location) => currentlocation = location);
  }

  void getPolyPoints() async {
    PolylinePoints polypoints = PolylinePoints();
    PolylineResult result = await PolylinePoints().getRouteBetweenCoordinates(
      googleAPIKey,
      PointLatLng(destination.latitude, destination.longitude),
      PointLatLng(source.latitude, source.longitude),
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        PolylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
      setState(() {});
    }
  }

  @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Google Map"),
        ),
        body: currentlocation == null
            ? const Center(child: Text("Loading"))
            : Column(
                children: [
                  Expanded(
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(
                          target: LatLng(currentlocation!.latitude!,
                              currentlocation!.longitude!),
                          zoom: 10.5),
                      polylines: {
                        Polyline(
                            polylineId: const PolylineId("routes"),
                            points: PolylineCoordinates,
                            color: Colors.red)
                      },
                      markers: {
                        Marker(
                          markerId: const MarkerId("currentLocation"),
                          position: LatLng(currentlocation!.latitude!,
                              currentlocation!.longitude!),
                        ),
                        const Marker(
                          markerId: MarkerId("source"),
                          position: source,
                        ),
                        const Marker(
                          markerId: MarkerId("destination"),
                          position: destination,
                        )
                      },
                    ),
                  ),
                ],
              ));
  }
}
