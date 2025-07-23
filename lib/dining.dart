import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Dining extends StatefulWidget {
  const Dining({super.key});

  @override
  DiningState createState() => DiningState();
}

class DiningState extends State<Dining> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-5.088448869675145, -42.81129004989637);
  final List<Marker> _markers = [
    Marker(
      markerId: MarkerId("1"),
      position: LatLng(-5.088448869675145, -42.81129004989637),
      infoWindow: InfoWindow(title: "IFPI"),
    ),
  ];

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pontos Próximos')),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 14.0,
        ),
        markers: Set.from(_markers),
      ),
    );
  }
}

