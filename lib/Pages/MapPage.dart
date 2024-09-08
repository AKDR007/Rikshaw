import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  MapPageState createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  // static const LatLng _gPlex = LatLng(37.4223, -122.0848);
  // static const LatLng _Vellore = LatLng(12.9165, 79.1325);
  // static const LatLng _Vellore = LatLng(0, 130);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: _Vellore,
          zoom: 10,
        ),
      ),
    );
  }
}
