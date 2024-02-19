import 'package:flutter/material.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

class MainMapKakao extends StatefulWidget {
  const MainMapKakao({super.key});

  @override
  State<MainMapKakao> createState() => _MainMapKakaoState();
}

class _MainMapKakaoState extends State<MainMapKakao> {
  late KakaoMapController mapController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Map')),
      body: KakaoMap(
        onMapCreated: (controller) {
          mapController = controller;
        },
        onMapTap: (latLng) {
          print('lat,lng : $latLng');
        },
      ),
    );
  }
}
