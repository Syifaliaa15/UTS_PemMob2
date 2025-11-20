import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart'; 
import 'package:latlong2/latlong.dart'; 

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      // Konfigurasi awal peta
      options: const MapOptions(
        initialCenter: LatLng(-6.200000, 106.816666), 
        initialZoom: 13.0,
        interactionOptions: InteractionOptions(
          flags: InteractiveFlag.all & ~InteractiveFlag.rotate, 
        ),
      ),
      // Layers Peta
      children: [
        
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.pemrograman_mobile', 
        ),
        
        
        MarkerLayer(
          markers: [
            Marker(
              point: const LatLng(-6.200000, 106.816666),
              width: 100,
              height: 100,
              child: const Icon(
                Icons.school,
                color: Colors.red,
                size: 40,
              ),
            ),
            Marker(
              point: const LatLng(-6.210000, 106.826666),
              width: 100,
              height: 100,
              child: const Icon(
                Icons.book,
                color: Colors.blue,
                size: 40,
              ),
            ),
          ],
        ),
      ],
    );
  }
}