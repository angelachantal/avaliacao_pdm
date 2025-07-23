import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NearbyPage extends StatefulWidget {
  const NearbyPage({super.key});

  @override
  State<NearbyPage> createState() => _NearbyPageState();
}

class _NearbyPageState extends State<NearbyPage> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-5.085992268303342, -42.81132175965173); // Localização do IFPI - CATCE

  final Set<Marker> _markers = {
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(-5.085992268303342, -42.81132175965173),
      infoWindow: InfoWindow(
        title: 'IFPI',
        snippet: 'IFPI - Campus Central',
      ),
    ),
    Marker(
      markerId: MarkerId('2'),
      position: LatLng(-5.072187061192332, -42.75190185965174),
      infoWindow: InfoWindow(
        title: 'IFPI',
        snippet: 'IFPI - Reitoria',
      ),
    ),
  };

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Locais Próximos')),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 15.0,
        ),
        markers: _markers,
      ),
    );
  }
}
