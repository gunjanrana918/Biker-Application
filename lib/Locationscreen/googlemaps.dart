import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {}

class Googlemaps extends StatefulWidget {
  const Googlemaps({Key? key}) : super(key: key);

  @override
  State<Googlemaps> createState() => _GooglemapsState();
}

class _GooglemapsState extends State<Googlemaps> {
  @override
  Widget build(BuildContext context) {
    final Completer<GoogleMapController> _controller = Completer();
    const LatLng source = LatLng(28.5420502, 77.2112786);
    const LatLng destination = LatLng(25.69893, 32.6421);
    return Scaffold(
        appBar: AppBar(
          title: Text("Google Map"),
        ),
        body: Column(
          children: [
            Expanded(
              child: GoogleMap(
                initialCameraPosition:
                    const CameraPosition(target: destination, zoom: 14.5),
                markers: {
                  Marker(
                    markerId: MarkerId("destination"),
                    position: destination,
                  ),
                  Marker(
                    markerId: MarkerId("source"),
                    position: source,
                  )
                },
              ),
            ),
          ],
        ));
  }
}
