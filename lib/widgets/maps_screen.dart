import 'package:bengkel_online/models/bengkel.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsScreen extends StatefulWidget {
  @override
  _MapsScreenState createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  late GoogleMapController mapController;
  Set<Marker> markers = Set();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peta Bengkel Terdekat'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(-6.1753924,
              106.8271528), // Koordinat Jakarta sebagai koordinat awal
          zoom: 12,
        ),
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
          getCurrentLocationAndSetMarkers(); // Panggil fungsi untuk mendapatkan lokasi saat ini dan menambahkan marker bengkel terdekat
        },
        markers: markers,
      ),
    );
  }

  void getCurrentLocationAndSetMarkers() async {
    // TODO: Implementasikan fungsi ini untuk mendapatkan lokasi pengguna saat ini menggunakan paket geolocator
    // dan menambahkan marker bengkel terdekat ke dalam Set<Marker> markers.

    // Contoh:
    List<Bengkel> nearestBengkels = await getNearestBengkels();
    for (var bengkel in nearestBengkels) {
      markers.add(
        Marker(
          markerId: MarkerId(bengkel.name),
          position: LatLng(bengkel.latitude, bengkel.longitude),
          infoWindow: InfoWindow(
            title: bengkel.name,
            snippet: bengkel.address,
          ),
        ),
      );
    }
  }
  
  getNearestBengkels() {}
}
