import 'package:flutter/material.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

class MainMapKakao extends StatefulWidget {
  const MainMapKakao({super.key});

  @override
  State<MainMapKakao> createState() => _MainMapKakaoState();
}

class _MainMapKakaoState extends State<MainMapKakao> {
  late KakaoMapController mapController;

  Set<Marker> markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Map')),
      body: KakaoMap(
        onMapCreated: (controller) {
          mapController = controller;

          markers.add(Marker(
              markerId: markers.length.toString(),
              latLng: LatLng(37.5267768, 127.040659),
              infoWindowContent: '<center>카페지오</center>',
              infoWindowFirstShow: true));

          markers.add(Marker(
              markerId: markers.length.toString(),
              latLng: LatLng(37.5258641, 127.0385055),
              infoWindowContent: '탑토',
              infoWindowFirstShow: true));

          markers.add(Marker(
              markerId: markers.length.toString(),
              latLng: LatLng(37.5263524, 127.0381847),
              infoWindowContent: '레페토',
              infoWindowFirstShow: true));

          setState(() {});
        },
        onMapTap: (latLng) {
          print('lat,lng : $latLng');
        },
        center: LatLng(37.527394, 127.040572),
        markers: markers.toList(),
        onMarkerTap: (markerId, latLng, zoomLevel) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                  'marker click:\n\nmarkerId : $markerId\n\n : $zoomLevel\n\n$latLng')));
        },
      ),
    );
  }
}
