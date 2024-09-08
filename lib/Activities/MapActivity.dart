import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapactivity extends StatefulWidget {
  const Mapactivity({super.key});

  @override
  _MapActivity createState() => _MapActivity();
}

class _MapActivity extends State<Mapactivity> {
  static const LatLng _vellore = LatLng(12.9165, 79.1325);

  // Google Map Controller
  late GoogleMapController _mapController;

  final TextEditingController sourceLocation = TextEditingController();

  @override
  void dispose() {
    // Dispose the controller when the widget is removed
    _mapController.dispose();
    sourceLocation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              initialCameraPosition: const CameraPosition(
                target: _vellore,
                zoom: 10,
              ),
              onMapCreated: (GoogleMapController controller) {
                _mapController = controller;
              },
            ),
          ),
        ],
      ),
    );
  }
}
