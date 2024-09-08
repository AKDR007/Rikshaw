import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapactivity extends StatefulWidget {
  const Mapactivity({super.key});

  @override
  State<Mapactivity> createState() => _MapActivity();
}

class _MapActivity extends State<Mapactivity> {
  static const LatLng _Vellore = LatLng(12.9165, 79.1325);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body:
            GoogleMap(initialCameraPosition: CameraPosition(target: _Vellore)));
  }
}
